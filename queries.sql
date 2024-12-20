-- Query for Report
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
