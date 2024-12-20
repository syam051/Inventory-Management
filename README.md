# Inventory Management System

## Project Overview
The Inventory Management System is a database project designed to efficiently manage inventory and supplier information using Oracle SQL. It showcases skills in database design, normalization, and SQL scripting, with features for storing, querying, and reporting product and supplier details.

## Features
- Product Management:
  - Store and manage product details, including quantity and pricing.
- Supplier Management:
  - Maintain supplier information and their contact details.
- Reporting:
  - Generate reports to view product availability along with associated supplier information.

## Technologies Used
- Database:
  -  Oracle SQL
- Tools:
  -  Oracle Live SQL, SQL Plus
- Concepts:
  - Relational Database Design
  - Normalization
  - SQL Joins and Queries

## Setup Instructions
### Step 1: Schema Creation
1. Create the Suppliers table:
```sql
CREATE TABLE Suppliers (
    SupplierID NUMBER PRIMARY KEY,
    SupplierName VARCHAR2(100) NOT NULL,
    Contact VARCHAR2(50)
);
```

2. Create the Products table:
```sql
CREATE TABLE Products (
    ProductID NUMBER  PRIMARY KEY,
    ProductName VARCHAR2(100) NOT NULL,
    Quantity NUMBER NOT NULL,
    Price NUMBER(10, 2) NOT NULL,
    SupplierID NUMBER REFERENCES Suppliers5(SupplierID)
);
```

### Step 2: Insert Sample Data
1. Insert supplier data:
```sql
INSERT INTO Suppliers VALUES (1,'Microsoft', 'microsoft@techsupplies.com');
INSERT INTO Suppliers VALUES (2,'Qtel Comtech Limited', 'QCL@officeequipment.com');
```

2.Insert product data:
```sql
INSERT INTO Products VALUES (100,'Laptop', 50, 55000.00, 1);
INSERT INTO Products VALUES (105,'Keyboard', 150, 1500.00, 2);
INSERT INTO Products VALUES (110,'Mouse', 200, 500.00, 1);
```

### Step 3: Query the Data
Retrieve product and supplier details:
```sql
SELECT 
    P.ProductName, 
    P.Quantity, 
    P.Price, 
    S.SupplierName, 
    S.Contact
FROM 
    Products P
JOIN 
    Suppliers S
ON 
    P.SupplierID = S.SupplierID;
```

## Project Output

![Screenshot 2024-12-20 212138](https://github.com/user-attachments/assets/82429afb-a593-4d61-91fa-cc7a9c088e3d)

## Live Demo
Experience the project live on Oracle Live SQL:  
[Oracle Live SQL - Inventory Management System](https://livesql.oracle.com/ords/livesql/s/cq6nvlh252al2sf09on7qbk1y)


## Future Enhancements
- Add support for product categories.
- Implement triggers for stock level alerts.
- Create stored procedures for frequent operations.



