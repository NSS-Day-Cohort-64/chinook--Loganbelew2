SELECT
 InvoiceId,
 COUNT(*) AS TotalLines
FROM InvoiceLine
GROUP BY InvoiceId