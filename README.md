
#  Online Shopping System – DBMS Mini Project

 Group 2 
 Roll No.: 23CS8006-23CS8010

##  Problem Statement  
Develop a database system to manage **products, customers, and purchase transactions** for an online shopping platform.

##  Description  
This system allows the storage and management of:
- Product listings  
- Customer details  
- Purchase history  

It supports a variety of queries for tracking orders, analyzing purchase behavior, and managing inventory.

---

##  Database Design

###  Tables

- **Products**
  - `ProductID` (Primary Key)
  - `Name`
  - `Price`
  - `Stock`
  - `CategoryID`

- **Customers**
  - `CustomerID` (Primary Key)
  - `Name`
  - `Email`
  - `Address`
  - `Phone`

- **Orders**
  - `OrderID` (Primary Key)
  - `CustomerID` (Foreign Key)
  - `ProductID` (Foreign Key)
  - `OrderDate`
  - `Quantity`

---

##  Key Features (Implemented via SQL Queries)

-  Create tables and define relationships  
-  Insert sample data  
-  List all available products in stock  
-  Retrieve purchase history of a specific customer  
-  Identify the most purchased product  
-  Update stock quantity after a purchase  
-  Delete customer records  
-  Generate a sales report  
-  Retrieve customers who ordered in the last 3 months  
-  Calculate total revenue per category  
-  Get top 5 customers by total purchase value  
-  List products that are out of stock  
-  Find the most frequently bought product category  
-  Retrieve orders placed in a specific month  
-  Find the average order value per customer  
-  Retrieve all orders with more than 5 items  
-  Identify customers who never placed an order  
-  Sort orders by highest total value  

---

##  How to Run

1. **Open MySQL Command Line Client**
    ```bash
    mysql -u your_username -p
    ```

2. **Create and Use the Database**
    ```sql
    CREATE DATABASE online_shopping;
    USE online_shopping;
    ```

3. **Run the SQL Scripts**
    ```sql
    source SQL_Scripts/create_tables.sql;
    source SQL_Scripts/triggers.sql;
    source SQL_Scripts/stored_procedures.sql;
    source SQL_Scripts/insert_data.sql;
    source SQL_Scripts/queries.sql;
    ```

---

##  Project Structure

```
Online_Shopping_System/
├── GitHub_Repo/
|   ├── repo.txt
├── SQL_Scripts/
|   ├── create_tables.sql
|   ├── triggers.sql  
│   ├── stored_procedures.sql    
│   ├── insert_data.sql
│   └── queries.sql 
├── Screenshots/
│   └── (Outputs of queries)
├── Reports/
│   └── Online_Shopping_Report.docx
└── README.md
```

---

##  Notes

This is our submission for the **Database Management Systems (DBMS)** mini project.  
We implemented and tested everything using **MySQL Command Line Client** for a hands-on, real-time query experience.
