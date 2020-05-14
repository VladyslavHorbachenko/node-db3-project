-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.ProductName, category.CategoryName from product
join category
on category.Id = product.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select [Order].id, shipper.CompanyName from [Order]
join shipper
on shipper.Id = [Order].ShipVia
where [Order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select Product.ProductName, OrderDetail.Quantity from Product
join OrderDetail
ON product.Id = orderDetail.ProductId
where orderdetail.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [Order].Id ,CompanyName, LastName
FROM [Order]
join employee
on employee.Id = [Order].EmployeeId
join customer
on customer.Id = [Order].CustomerId