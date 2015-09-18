SELECT Artist.Name AS [Top 3 Best-selling Artists], COUNT(InvoiceLine.Quantity) AS [Number of Tracks Sold], 
printf("$%.2f", SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity)) AS [Total Sales]
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
INNER JOIN Album ON Track.AlbumId == Album.AlbumId
INNER JOIN Artist ON Album.ArtistId == Artist.ArtistId
GROUP BY Artist.Name
ORDER BY [Number of Tracks Sold] DESC
LIMIT 3