SELECT [First Name], [Last Name], MAX([Total Sales]) as [Highest in Total Sales] FROM
(
SELECT Employee.FirstName as [First Name], Employee.LastName as [Last Name], printf("$%.2f", SUM(Invoice.Total)) as [Total Sales] 
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Employee.EmployeeId ORDER BY Employee.EmployeeId
) 