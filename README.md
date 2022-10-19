# Crowdfunding-ETL

## Overview of Project
Independent Funding is a crowdfunding platform for funding independent projects or ventures. It has been growing, so now it needs to move all their accessible data from one large Excel file onto a PostgreSQL database. Below are the tasks to perform  - 

* Extract and transform the data from the large Excel file .

* Create a PostgreSQL database and tables using an ERD. 

* Load the CSV files into the database. 

* Perform SQL queries to generate reports for stakeholders. 

Below ETL process used to perform the analysis:

1. Extract the data from an external file (.xls) by using Python and Pandas.

2. Clean and transform data by using Jupyter notebook, Python and Pandas.

3. Design a database and a table schema by using an entity relationship diagram (ERD).

4. Load data into a PostgreSQL database.

5. Perform data analysis by using SQL queries.

### Analysis Results: 
The crowdfunding_info worksheet has a header row followed by 10 rows of data. 

![Screen Shot 2022-10-18 at 11 04 07 PM](https://user-images.githubusercontent.com/44387918/196615053-75fa3e57-768d-4be9-a6ae-1dfec12d2795.png)

Contact_info worksheet contains six rows of data in the form of a dictionary. We need to clean the data by separating it as columns. 

![Screen Shot 2022-10-18 at 11 06 18 PM](https://user-images.githubusercontent.com/44387918/196615094-ad9d81c7-42f4-4711-b5aa-aed65ff3b452.png)

Data extraction

![Screen Shot 2022-10-18 at 11 21 33 PM](https://user-images.githubusercontent.com/44387918/196615139-7a2c07e8-dc0b-48d9-b951-b1f9b001c889.png)

Transformed the data into meaningful format. 

![Screen Shot 2022-10-18 at 11 22 47 PM](https://user-images.githubusercontent.com/44387918/196615220-442ed12b-ac78-4059-8c0d-00670be84075.png)

Created a map of the database and table schema by using an entity relationship diagram (ERD)
![Screen Shot 2022-10-18 at 11 41 36 PM](https://user-images.githubusercontent.com/44387918/196616106-d90aecb2-3de7-44fb-9e74-feb914ebe901.png)

Load data into the database including a new dataset that contains information about the backers. 

![Screen Shot 2022-10-18 at 11 29 07 PM](https://user-images.githubusercontent.com/44387918/196615256-ab796af9-aef5-4776-b5ea-43feaf35b8fc.png)

## Conclusion
Able to extract, transform and load the data successfully and also retrieve the data according to the management queries. Example remaining goal amount for each live campaign etc. 
