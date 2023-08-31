--customers full name, invoice id, date of invoice, billing country
SELECT 
firstname || ' ' || lastname as FullName, 
InvoiceId,
InvoiceDate,
BillingCountry
FROM Customer as c
JOIN Invoice as i
WHERE c.CustomerId = i.CustomerId and c.Country = 'Brazil'