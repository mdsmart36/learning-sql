SELECT Invoice.*, COUNT(*) as [# of Line Items] FROM Invoice
INNER JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId ORDER BY Invoice.InvoiceId