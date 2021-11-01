import numpy as np
import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer


class Merger:
    """Merges sales table with store table AFTER dropping unused samples and
    features.
    """

    def __init__(self) -> None:
        """Initialize Merger class instance"""
        nondropped_data = None  # sales data after dropping
        merged_data = None  # merged sales and store data
        sales_data = None  # sales data used for merging
        store_data = None  # store data used for merging

    def merge(self, sales_data: pd.DataFrame, store_data: pd.DataFrame) -> pd.DataFrame:
        """Merge sales and store data tables.

        Args:
            sales_data (pd.DataFrame): dayly sales of multiple stores
            store_data (pd.DataFrame): information on stores in sales data

        Returns:
            pd.DataFrame: dayly sales of stores with extended information
        """
        self.sales_data = sales_data
        self.store_data = store_data
        self._drop_data()
        self._merge_sales_stores()
        return self.merged_data

    def _drop_data(self) -> None:
        """Drop samples where sales is NaN or 0 and drop the customers column."""
        sales_data = self.sales_data

        # drop NaN in sales
        sales_data.dropna(subset=["Sales"], inplace=True)

        # remove rows where sales=0
        keep_mask = sales_data.loc[:, "Sales"] != 0
        sales_data = sales_data[keep_mask]

        # drop the cutomers feature
        sales_data.drop("Customers", axis=1, inplace=True)

        # store data
        self.nondropped_data = sales_data

    def _merge_sales_stores(self) -> None:
        """Merge sales and store dataframes on the store identifier."""

        nondropped_data = self.nondropped_data
        store_data = self.store_data

        # fill NaNs
        nondropped_data = nondropped_data.fillna({"Store": 0})

        # make dtype the same on merging key
        nondropped_data = nondropped_data.astype({"Store": int})

        # merging and storing
        self.merged_data = nondropped_data.merge(store_data, how="left", on="Store")


class Imputer:
    """Impute missing values in the merged sales and store data."""

    def __init__(self) -> None:
        """Initialize class instance."""

        # features for zero imputing
        self.zero_imputed = ["Open", "Promo", "SchoolHoliday"]

        # features for mode imputing
        self.mode_imputed = [
            "StateHoliday",
            "StoreType",
            "Assortment",
            "PromoInterval",
            "Promo2",
        ]

        # features for median imputing
        self.median_imputed = ["CompetitionDistance"]

        # all columns in order of imputing
        self.columns_ordered = (
            self.zero_imputed + self.mode_imputed + self.median_imputed
        )

        # transformers used for imputing
        self.transformers = None

    def define_imputers(self) -> None:
        """Define the transformer for imputing. Features specified in the
        attributes will be zero, mode, or median imputed.
        """
        zero_imputer = SimpleImputer(
            missing_values=np.nan, strategy="constant", fill_value=0
        )
        mode_imputer = SimpleImputer(missing_values=np.nan, strategy="most_frequent")
        median_imputer = SimpleImputer(missing_values=np.nan, strategy="median")

        self.transformers = ColumnTransformer(
            transformers=[
                ("zero_imputer", zero_imputer, self.zero_imputed),
                ("mode_imputer", mode_imputer, self.mode_imputed),
                ("median_imputer", median_imputer, self.median_imputed),
            ]
        )

    def fit(self, X: pd.DataFrame) -> None:
        """Fit Imputer to data.

        Args:
            X (pd.DataFrame): Data to fit Imputer to.
        """
        self.transformers.fit(X)

    def transform(self, X: pd.DataFrame) -> np.array:
        """Impute data based on fitted Imputer.

        Args:
            X (pd.DataFrame): Data to transform

        Returns:
            np.array: Imputed data, Nth column corresponds to Nth feature in
                      self.columns_ordered
        """
        transformed = self.transformers.transform(X)
        return transformed

    def transform_reconstruct(self, X: pd.DataFrame) -> pd.DataFrame:
        """Impute data and write data to DataFrame. This method improves upon
        the .transform() method by writing the imputed data to the original
        DataFrame.

        Args:
            X (pd.DataFrame): Data to impute.

        Returns:
            pd.DataFrame: Imputed data in the same shape as the original data.
        """
        X_out = X.copy()
        X_out.loc[:, self.columns_ordered] = self.transform(X)
        return X_out


class Cleaner:
    """Clean data, perform feature engineering, and set data types"""

    def __init__(self) -> None:
        """Initalize Cleaner instance.
        """
        self.data = None  # data used for cleaning
        self.dates = None  # dates in order of appearance in cleaned data

    def clean(self, data: pd.DataFrame) -> pd.DataFrame:
        """Wrapper function to perform cleaning, feature engineering, and
        setting of data types.

        Args:
            data (pd.DataFrame): Data to clean.

        Returns:
            pd.DataFrame: Cleaned data.
        """
        self.data = data
        self.dates = data.loc[:, "Date"]

        self._convert_date()
        self._correct_stateholiday()
        self._convert_competition_date()
        self._convert_promo2_date()
        self._drop_columns()
        self._set_dtypes()
        
        return self.data

    def _correct_stateholiday(self) -> None:
        """Correct errors for coding of "no state holiday" by replacing "0.0" with "0".
        """
        def zerofun(row: pd.Series) -> str:
            """Helper function for correction through pd.DataFrame.apply()

            Args:
                row (pd.Series): Row on which .apply() is acting.

            Returns:
                str: Proper code for given StateHoliday.
            """
            if row["StateHoliday"] == "0.0":
                out = "0"
            else:
                out = row["StateHoliday"]
            return out

        self.data = self.data.astype({"StateHoliday": str})
        self.data.loc[:, "StateHoliday"] = self.data.apply(func=zerofun, axis=1)

    def _set_dtypes(self) -> None:
        """Change datatype to categorical where needed.
        """
        self.data = self.data.astype(
            {
                "StateHoliday": "category",
                "StoreType": "category",
                "Assortment": "category",
                "PromoInterval": "category",
            }
        )

    def _convert_competition_date(self) -> None:
        """Combine the features CompetitionOpenSinceMonth and
        CompetitionOpenSinceYear to form a new feature SalesCompetitionLag
        which specifies the time since a competitor appeared, given in number
        of days from the sales date.

        Also creates a second feature DateObj that is used downstream in
        self._convert_promo2_date().
        
        Any date before competition appears is coded as 0
        NaNs are imputed as -1
        """
        # Construct date when competition opened
        self.data.loc[:, "CompetitionOpenDate"] = pd.to_datetime(
            dict(
                year=self.data.loc[:, "CompetitionOpenSinceYear"],
                month=self.data.loc[:, "CompetitionOpenSinceMonth"],
                day=1,
            )
        )

        # Create DateObj from Date
        self.data.loc[:, "DateObj"] = pd.DatetimeIndex(self.data.loc[:, "Date"])

        # Compute difference between current date and competition appearance
        lag = (
            self.data.loc[:, "DateObj"] - self.data.loc[:, "CompetitionOpenDate"]
        ) / np.timedelta64(1, "D")

        lag[lag < 0] = 0  # encode days before competition (i.e., negative numbers)
        lag.fillna(-1, inplace=True)  # impute NaNs
        self.data.loc[:, "SalesCompetitionLag"] = lag  # create lag feature

    def _convert_date(self) -> None:
        """Split Date into Year, Month, Week, and Weekday. Subsequently map
        Month, Week, and Weekday to circular features using sine/cosine.
        """

        data = self.data

        # Change to datetime
        data.loc[:, "Date"] = pd.to_datetime(data.loc[:, "Date"])

        def encode(data: pd.DataFrame, col: str, max_val: int) -> pd.DataFrame:
            """Helper function to sine/cosine encode circular date information.

            Args:
                data (pd.DataFrame): Data with feature that needs encoding.
                col (str): Feature name that needs encoding.
                max_val (int): Maximum feature value that needs mapping to 0.

            Returns:
                pd.DataFrame: Data with sine and cosine features added.
            """
            data[col + "_sin"] = np.sin(2 * np.pi * data[col] / max_val)
            data[col + "_cos"] = np.cos(2 * np.pi * data[col] / max_val)
            return data

        # Datetime split in year, month, week, weekday and adding sin/cos
        data["Year"] = pd.DatetimeIndex(data.loc[:, "Date"]).year
        data["Month"] = pd.DatetimeIndex(data.loc[:, "Date"]).month
        data["Weekday"] = data.loc[:, "Date"].dt.dayofweek
        data = encode(data, "Month", 12)
        data = encode(data, "Weekday", 365)

        # Store updates to data
        self.data = data

    def _convert_promo2_date(self) -> None:
        """Combine the features Promo2SinceYear and Promo2SinceWeek to form a
        new feature Promo2Lag which specifies the time since a the store
        started participating in Promo2, given in number of days from the
        sales date.

        Needs the feature DateObj that was created using
        self._convert_competition_date().
        
        Any date before participation in Promo2 is coded as 0
        NaNs are imputed as -1
        """
        # Construct date when participation started
        dates = self.data.loc[:, "Promo2SinceYear"] * 100 + (
            self.data.loc[:, "Promo2SinceWeek"] - 1
        )
        
        # Construct Promo2 start date
        dates.fillna(0, inplace=True)
        dates = dates.astype(int)
        dates = dates.astype(str) + "0"
        dates.replace("00", np.nan, inplace=True)
        self.data.loc[:, "Promo2Date"] = pd.to_datetime(dates, format="%Y%W%w")

        # Compute difference between current date and Promo2 participation
        lag = (
            self.data.loc[:, "DateObj"] - self.data.loc[:, "Promo2Date"]
        ) / np.timedelta64(1, "D")
        lag[lag < 0] = 0  # encode days before competition (i.e., negative numbers)
        lag.fillna(-1, inplace=True)  # impute NaNs
        self.data.loc[:, "Promo2Lag"] = lag  # create lag feature

    def _drop_columns(self) -> None:
        """Drop unused features.
        """
        # ready to drop DayofWeek and Date
        columns_to_drop = [
            "DayOfWeek",
            "Date",
            "DateObj",
            "Month",
            "Weekday",
            "CompetitionOpenSinceYear",
            "CompetitionOpenSinceMonth",
            "CompetitionOpenDate",
            "Promo2SinceYear",
            "Promo2SinceWeek",
            "Promo2Date",
        ]
        self.data.drop(columns_to_drop, axis=1, inplace=True)
