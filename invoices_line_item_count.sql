SELECT InvoiceId, COUNT(*) AS TotalLineItems
FROM InvoiceLine
GROUP BY InvoiceId
