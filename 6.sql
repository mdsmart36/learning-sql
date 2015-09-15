SELECT * FROM Invoice 
INNER JOIN Customer ON Customer.CustomerId == Invoice.CustomerId 
WHERE Customer.Country == 'Brazil'