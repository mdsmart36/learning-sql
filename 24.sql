SELECT Track.Name, COUNT(*) AS [Number of Purchases] 
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
GROUP BY Track.Name
ORDER BY COUNT(*) DESC