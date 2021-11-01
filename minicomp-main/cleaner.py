import numpy as np
import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer

class Cleaner():
    
    def __init__(self):
        self.zero_imputed = ["Open", "Promo", "SchoolHoliday"]
        self.mode_imputed = ["StateHoliday", "StoreType", "Assortment"]
        self.median_imputed = ["CompetitionDistance"]
        self.columns_ordered = self.zero_imputed + self.mode_imputed + self.median_imputed
        self.transformers = None


    def define_imputers(self):
        
        zero_imputer = SimpleImputer(missing_values=np.nan, strategy="constant", fill_value=0)
        mode_imputer = SimpleImputer(missing_values=np.nan, strategy="most_frequent")
        median_imputer = SimpleImputer(missing_values=np.nan, strategy="median")
        
        self.transformers = ColumnTransformer(
            transformers=[
                ("zero_imputer", zero_imputer, self.zero_imputed),
                ("mode_imputer", mode_imputer, self.mode_imputed),
                ("median_imputer", median_imputer, self.median_imputed),
            ]
        )

    
    def fit(self, X):
        self.transformers.fit(X)

        
    def transform(self, X):
        transformed = self.transformers.transform(X)
        return transformed


    def fit_transform(self, X):
        transformed = self.transformers.fit_transform(X)
        return transformed
    
    
    def transform_reconstruct(self, X):
        X_out = X.copy()
        X_out.loc[:, self.columns_ordered] = self.transform(X)
        return X_out


    # change CompetitionOpenSinceMonth CompetitionOpenSinceYear to days from sales
    def competition_date(data):
        data['CompetitionOpenDate'] = pd.to_datetime(dict(year=data.CompetitionOpenSinceYear,
                                                          month=data.CompetitionOpenSinceMonth,
                                                          day=1))
        data['DateObj'] = pd.DatetimeIndex(data.Date)
        data['SalesCompetitionLag'] = (data['DateObj'] - data['CompetitionOpenDate'])

        return data


    # change Promo2SinceYear Promo2SinceWeek to days from sales
    def promo2_date(data):
        dates = data.Promo2SinceYear * 100 + (data.Promo2SinceWeek - 1)
        dates.fillna(0, inplace=True)
        dates = dates.astype(int)
        dates = dates.astype(str) + '0'
        dates.replace('00', np.nan, inplace=True)
        data['Promo2Date'] = pd.to_datetime(dates, format='%Y%W%w')
        data['DateObj'] = pd.DatetimeIndex(data.Date)
        data['Promo2Lag'] = (data['DateObj'] - data['Promo2Date'])

        return data