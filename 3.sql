SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry FROM Invoice 
INNER JOIN Customer ON Customer.CustomerId == Invoice.CustomerId 
WHERE Customer.Country == 'Brazil'