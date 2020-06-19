# ETL_Project

### Purpose:
Our goal for this project was to develop a database that would assist individuals in looking for the best information on used cars from craigslist. We help them in doing this by providing multiple data sets that include (1) available cars on craigslist for the month of May 2020 (2) a refined directory of each car's mpg rating and (3) the average gas price in each state.

We believe that we accomplished this goal by providing the user enough data to be able to turn a profit in the used car market by being able to calculate an estimated total cost and potential profit based off of the requested price of the car and the local gas prices in the state the car would be sold in. Our project combined three data sets and we will give them a detailed breakdown below.

### SQL Database: 
We decided to develop an SQL database purely due to the relationship our data sets were going to have with each other. Our database came with the challenge of developing primary keys that would be consistent across all databases. We came to the conclusion that using Composite Primary Keys for make, model, and year would be the variables to make as primary keys because it was the most identifiable and consistent variable in our datasets. 

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

### In this repository you will find:

1) Scripts: This folder contains the scripts used to clean each dataset

2) SQL: all SQL code, a picture of the table layout, as well as the script to load the datasets into pgAdmin

Note* For the SQL script to work you need to have a config.py file in your local SQL folder. This config.py will contain the password for your pgAdmin. 
