SELECT i.Total, c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName FROM Invoice i
JOIN Customer c ON i.CustomerId == c.CustomerId
JOIN Employee e ON c.SupportRepId == e.EmployeeId
ORDER By e.FirstName, e.LastName