## Rossman Kaggle Mini-Competition

This mini competition is adapted from the Kaggle Rossman challenge.

## How to run the files

1. Clone the repository, create environment and install requirements file
```
git clone https://github.com/cverst/minicomp
```
We recommend to use virtualenv for development:

Start by installing virtualenv if you don't have it

```
pip install virtualenv
```
Once installed access the project folder

```
cd folder_name
```

Create a virtual environment

```
virtualenv venv_minicomp
```

Enable the virtual environment

```
source venv_minicomp/bin/activate
```

Install the python dependencies on the virtual environment

```
pip install -r requirements.txt
```

2. Make sure the store.csv ,train.csv and holdout.csv are present in the data folder.

3. Run the notebook which engages the preprocessing.py file.

Preprocessing.py creates
- Cleaner
- Merger
- Imputer
classes to clean and process the data for the models to run.

4. The predictions score can be found in the end of the notebook.


## Dataset

The dataset is made of two csvs:

```
#  store.csv
['Store', 'StoreType', 'Assortment', 'CompetitionDistance', 'CompetitionOpenSinceMonth', 'CompetitionOpenSinceYear', 'Promo2', 'Promo2SinceWeek', 'Promo2SinceYear', 'PromoInterval']

#  train.csv
['Date', 'Store', 'DayOfWeek', 'Sales', 'Customers', 'Open', 'Promo','StateHoliday', 'SchoolHoliday']
```

More info from Kaggle:

```
Id - an Id that represents a (Store, Date) duple within the test set

Store - a unique Id for each store

Sales - the turnover for any given day (this is what you are predicting)

Customers - the number of customers on a given day

Open - an indicator for whether the store was open: 0 = closed, 1 = open

StateHoliday - indicates a state holiday. Normally all stores, with few exceptions, are closed on state holidays. Note that all schools are closed on public holidays and weekends. a = public holiday, b = Easter holiday, c = Christmas, 0 = None

SchoolHoliday - indicates if the (Store, Date) was affected by the closure of public schools

StoreType - differentiates between 4 different store models: a, b, c, d

Assortment - describes an assortment level: a = basic, b = extra, c = extended

CompetitionDistance - distance in meters to the nearest competitor store

CompetitionOpenSince[Month/Year] - gives the approximate year and month of the time the nearest competitor was opened

Promo - indicates whether a store is running a promo on that day

Promo2 - Promo2 is a continuing and consecutive promotion for some stores: 0 = store is not participating, 1 = store is participating

Promo2Since[Year/Week] - describes the year and calendar week when the store started participating in Promo2
PromoInterval - describes the consecutive intervals Promo2 is started, naming the months the promotion is started anew. E.g. "Feb,May,Aug,Nov" means each round starts in February, May, August, November of any given year for that store
```
