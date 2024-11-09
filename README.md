# SpendSmart SQL Queries

This repository contains SQL queries crafted to retrieve and manipulate data within the SpendSmart database. The queries cover tasks including data retrieval, aggregation, insertion, update, and deletion operations to support the SpendSmart personal finance application.

## Files in this Repository

- **SQL_Assignment_Report.pdf**: A detailed report containing SQL queries for various tasks on the SpendSmart database. Each query addresses specific requirements and includes explanations for each solution.
- **spendsmart_database.sql**: The database for SpendSmart.
## Project Setup

### Database Setup Instructions

To set up the SpendSmart database, follow these steps:

**Open the SQL Console**:
   ```bash
   $ mysql -u root -p
Create and Use the SpendSmart Database:

sql
Copy code
CREATE DATABASE spendsmart;
USE spendsmart;
Load the Database Schema and Data: Use the SOURCE command with the path to the spendsmart_database.sql file:

sql
Copy code
SOURCE [path_to_downloaded_file];
Example:

sql
Copy code
SOURCE ~/Downloads/spendsmart_database.sql;
SQL Queries Overview
The following SQL queries are included in the report:

Retrieve Usernames and Email Addresses:

Retrieves all usernames and emails from the user table.
Retrieve Credit Card Statements with Merchant and Amount:

Joins user and credit_card_statements tables to display statements with merchant name and amount.
Calculate Total Credit Card Transactions by User:

Sums amounts per user to show total spending.
Retrieve Utility Bills Over $50:

Filters utility_bills for amounts greater than $50.
Add New User:

Adds a new user with specified username, email, and password hash.
Update Budget Limit for Travel Category:

Updates the budget limit for the "Travel" category for a specific user.
Delete Credit Card Statements Under $10:

Removes credit card statements where the amount is less than $10.
Retrieve Total Expenses for "Travel" Category by User:

Joins multiple tables to calculate and display total expenses per user for the "Travel" category.
Calculate Remaining Budget for "Health" Category:

Determines the remaining budget by subtracting expenses from the budget limit for a specific user and category.
Usage Notes
Each query is designed for efficiency and accuracy within the SpendSmart database schema, focusing on user-specific financial data management and reporting. Refer to the SQL_Assignment_Report.pdf for detailed explanations of each query and its purpose.

sql
Copy code

This README.md provides a structured overview of the project, referencing the specific queries and solutions already contained in the report.
