SELECT i.InvoiceLineId, i.InvoiceId, i.TrackId, t.Name as [Track Name], a.Name as [Artist Name], i.UnitPrice, i.Quantity  
FROM InvoiceLine i
INNER JOIN Track t ON i.TrackId == t.TrackId
INNER JOIN Album al ON t.AlbumId == al.AlbumId
INNER JOIN Artist a ON al.ArtistId == a.ArtistId