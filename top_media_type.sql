SELECT 
    MediaType AS TopMediaType,
    MAX(Purchases) AS NumberOfPurchases
FROM(
    SELECT 
        Mt.Name AS MediaType,
        SUM(IL.Quantity) AS Purchases
    FROM InvoiceLine IL 
    JOIN Track T ON T.TrackId = IL.TrackId
    JOIN MediaType Mt ON T.MediaTypeId = Mt.MediaTypeId
    GROUP BY MediaType
    ORDER BY Purchases DESC
);