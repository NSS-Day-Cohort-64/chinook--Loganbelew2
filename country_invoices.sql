SELECT BillingCountry as Country, COUNT(*) AS TotalInvoices
FROM Invoice 
GROUP BY BillingCountry