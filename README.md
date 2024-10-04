**Grocery Store Database Project**

**Overview**

This project demonstrates the design, creation, and testing of a relational database for a grocery store. The database contains tables that store information about items, purchases, sales, and vendors. The goal of this project is to show that the database structure supports accurate retrieval of data using SQL queries, ensuring the database design is functional and complete.

**Files Included**

Grocery Store Database EER.png -
This is an Entity-Relationship Diagram (EER) showing the relationships between tables in the database. It includes all the tables, fields, and connectors between them.

Grocery.sql -
This is the primary SQL script for creating the database and all necessary tables. This script can be run to recreate the entire database structure from scratch.

mydb_Items.sql -
A SQL script containing all the SQL statements to insert data into the Items table. This file is used to populate the Items table with sample data for testing purposes.

mydb_Purchase.sql -
A SQL script containing all the SQL statements to insert data into the Purchase table. It includes sample purchase data that can be used to test database queries.

mydb_Sales.sql -
A SQL script containing all the SQL statements to insert data into the Sales table. This includes data on items sold in the grocery store.

**How to Use**

Prerequisites
- MySQL Workbench or any SQL-compatible tool
- A MySQL database server instance (local or remote)

**Instructions**

1. Recreate the Database

To recreate the database, use the Grocery.sql file. This file contains the necessary commands to create the schema, tables, and relationships between them. Load and execute the file in your SQL environment.

bash
Copy code
mysql -u your_username -p < Grocery.sql

2. Insert Data
After creating the database, populate the tables using the data scripts:

mydb_Items.sql
mydb_Purchase.sql
mydb_Sales.sql
These files will insert sample data into the Items, Purchase, and Sales tables, respectively. You can execute these scripts in your SQL environment to fill the tables with data.

3. Run SQL Queries
After populating the database, you can test the structure by running the test queries in the Test Queries.sql file (if included). These queries will demonstrate how the database performs with various SQL JOINs and aggregations.

Example: To run a query file, load it into MySQL Workbench or your preferred SQL tool and execute it.

4. View the EER Diagram
The Grocery Store Database EER.png file shows the database schema visually. You can refer to this diagram to understand the table relationships and fields.

