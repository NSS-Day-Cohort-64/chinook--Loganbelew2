SELECT Track ,MAX(Purchases) as TopTrack FROM
(SELECT 
    i.TrackId,
    t.Name as Track,
    SUM(i.Quantity) as Purchases
FROM InvoiceLine i 
JOIN Track t 
ON i.TrackId = t.TrackId
JOIN Invoice 
ON Invoice.InvoiceId = i.InvoiceId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY i.TrackId
ORDER BY Purchases )