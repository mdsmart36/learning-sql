SELECT i.InvoiceLineId, i.InvoiceId, i.TrackId, t.Name as [Track Name], i.UnitPrice, i.Quantity 
FROM InvoiceLine i
INNER JOIN Track t ON i.TrackId == t.TrackId
