SELECT 
    IL.TrackId,
    T.Name,
    SUM(IL.Quantity) AS AmountOfPurchases
FROM InvoiceLine IL
JOIN Track T ON IL.TrackId = T.TrackId
GROUP BY IL.TrackId
ORDER BY NumberOfPurchases DESC LIMIT 5;