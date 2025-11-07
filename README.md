# mall-database-system
**Mall Database System (NHD Case)**

This project models the database system for NHD (New Horizons Decor), a business that manages booth rentals for dealers inside a mall. The goal was to replace manual record-keeping with a structured database that keeps track of dealers, booths, leases, products, and sales. By doing this, NHD can easily manage payments, organize data, and make better business decisions.



**Overview**

The database was designed in SQL Server Management Studio (SSMS) and follows Third Normal Form (3NF). It focuses on accuracy, organization, and reducing redundancy. Each table has a specific role, and relationships between tables are managed through primary and foreign keys to maintain referential integrity.



**Entities and Purpose**

DEALER – Stores contact and business information for each dealer.
BOOTH – Describes booth locations, features, and availability.
LEASES – Connects dealers to booths and includes rent and commission information.
PRODUCT – Lists product details and prices.
SALES – Tracks sales transactions and which dealer sold which product.



**Entity Relationship Diagrams (ERD)**

Cardinality Diagram
Shows the conceptual relationships and cardinalities between each entity.

Implemented ERD (SQL Server)
Displays the final database design as created in SQL Server.



**How to Run**

Open SQL Server Management Studio (SSMS).

Run mall-schema.sql to create all tables and relationships.

Run mallmockdata.sql to insert sample data.

Run mall-queries.sql to test and view query results.



**Sample Data**

The database was tested with 15 sample records for each table to ensure accuracy and relationships between entities.



**Query Results**

Below are the results from the five main queries in the project:

_Question 1_ – Total Sales for March
Shows the number of sales made by each dealer during March 2022.


_Question 2_ – NHD Amount Due for March
Calculates how much each dealer owes the mall after commission and rent.


_Question 3_ – Dealer Booth Details
Lists each dealer’s booth, location, rent, and booth features.


_Question 4_ – NHD Revenue for January
Displays the mall’s total revenue for January based on rent and commission.


_Question 5_ – Booths Available
Lists all booths currently vacant.



**Tools and Skills**

SQL Server Management Studio (SSMS)

Database Design and Normalization

Entity Relationship Diagrams (ERD)

Data Analysis through Queries



**Reflection**

Building this database taught me how to design structured systems that keep data consistent and easy to manage. It helped me understand the importance of normalization, strong relationships, and clean data organization. I also became more comfortable with SQL and how to troubleshoot database errors and dependencies.
