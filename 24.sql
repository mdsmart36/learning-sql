SELECT Track.Name AS [Track Name], COUNT(*) AS [Number of Purchases in 2013] 
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
INNER JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.Name
ORDER BY COUNT(*) DESC