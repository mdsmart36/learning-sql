SELECT [Media Type], MAX([Number of Items Sold in this Media Type]) AS [Number of Items Sold in this Media Type] FROM
(
SELECT MediaType.Name AS [Media Type], COUNT(*) AS [Number of Items Sold in this Media Type]
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId == Track.TrackId
INNER JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY [Number of Items Sold in this Media Type] DESC
)