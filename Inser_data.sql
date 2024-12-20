-- Insert Data into Suppliers Table
INSERT INTO Suppliers (SupplierName, Contact) VALUES 
('Tech Supplies Ltd.', 'contact@techsupplies.com'),
('Office Equipment Inc.', 'info@officeequipment.com');

-- Insert Data into Products Table
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES 
('Laptop', 50, 55000.00, 1),
('Keyboard', 150, 1500.00, 2),
('Mouse', 200, 500.00, 1);