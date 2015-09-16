SELECT BillingCountry, COUNT(*) as [Number of Invoices] FROM Invoice
GROUP BY BillingCountry ORDER BY [Number of Invoices] DESC