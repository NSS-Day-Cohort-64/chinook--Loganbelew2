SELECT i.*, t.Name, t.Composer
FROM InvoiceLine i 
JOIN Track t 
ON i.TrackId = t.TrackId