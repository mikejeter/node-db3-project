-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName, CategoryName
from Product
join Category
on  Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT ShipVia, CompanyName
FROM [Order]
JOIN Shipper
on [Order].ShipVia = Shipper.Id
WHERE OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName, OrderDetail.Quantity 
FROM OrderDetail 
JOIN Product 
ON Product.id = OrderDetail.ProductId 
WHERE OrderDetail.OrderId = 10251 
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].id 
AS OrderId, customer.CompanyName, employee.LastName 
FROM [order] 
JOIN customer 
ON [order].CustomerId = customer.Id 
JOIN employee 
ON [order].EmployeeId = employee.Id;
