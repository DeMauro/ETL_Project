# ETL_Project

### Purpose:
The goal of this project was to set up a database to assist individuals looking to re-sell used cars from craigslist. One way to turn a profit in the used car market is to purchase cars from out of state on craigslist and then drive them back to Colorado to sell locally. However, one variable in the cost that is often neglected is the price of gas for the trip home. Our project combined four data sets on craigs list car sales, car specifications, and state gas prices to assist individuals in their purchasing decisions. 

### Datasets

#### craigs_list:
Obtained at: https://www.kaggle.com/austinreese/craigslist-carstrucks-data

Last Updated: 2020 This data is scraped every few months, it contains most all relevant information that Craigslist provides on car sales including columns like price, condition, manufacturer, latitude/longitude, and 18 other categories

Contains: make, model, year, price, condition, description, image, location (lat, long: This can be used to assess distance to buyers home state for calculating gas price)

#### mpg:
Obtained at: https://www.kaggle.com/uciml/autompg-dataset

Original Data: This dataset was taken from the StatLib library which is
maintained at Carnegie Mellon University.

Last Updated: 2017. Although this is not current, most cars sold on craigs list are older models, and thus covered under this dataset

Contains: make, model, year, engine specs, expected mpg

#### gas_price:
Obtained using API at: https://gasprices.aaa.com/state-gas-price-averages/

Contains: state, price per gallon (Regular, Mid-Grade, Premium, Diesel)


### Layout of Repo

Note: To save space raw data was not stored in the repo and the Resource folder is stored in a gitignore. We suggest anyone working with this repo create a Resource folder in the main directory for this repo. 

In this repository you will find:

1) Scripts: This folder contains the scripts used to clean each dataset

2) SQL: all SQL code, a picture of the table layout, as well as the script to load the datasets into pgAdmin

Note* For the SQL script to work you need to have a config.py file in your local SQL folder. This config.py will contain the password for your pgAdmin. 

