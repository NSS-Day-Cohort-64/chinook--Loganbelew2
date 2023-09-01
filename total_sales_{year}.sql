SELECT 
SUM(CASE WHEN InvoiceDate LIKE '2009%' THEN Total ELSE 0 END) as "2009TotalSales",
SUM(CASE WHEN InvoiceDate LIKE '2011%' THEN Total ELSE 0 END) as "2011TotalSales"
FROM Invoice