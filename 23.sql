SELECT BillingCountry, printf("$%.2f", SUM(Total)) as [Total Sales per Country]
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC