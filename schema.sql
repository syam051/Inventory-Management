-- Create Products Table
CREATE TABLE Products (
    ProductID NUMBER  PRIMARY KEY,
    ProductName VARCHAR2(100) NOT NULL,
    Quantity NUMBER NOT NULL,
    Price NUMBER(10, 2) NOT NULL,
    SupplierID NUMBER NOT NULL REFERENCES Suppliers(SupplierID)
);

-- Create Suppliers Table
CREATE TABLE Suppliers (
    SupplierID NUMBER PRIMARY KEY,
    SupplierName VARCHAR2(100) NOT NULL,
    Contact VARCHAR2(50)
);