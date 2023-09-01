
SELECT SalesRep, MAX(TotalSales) AS Sales FROM (
SELECT e.FirstName || ' ' || e.LastName AS SalesRep,
SUM(i.Total) AS TotalSales
FROM Customer c 
JOIN Invoice i 
ON c.CustomerId = i.CustomerId
JOIN Employee e 
ON e.EmployeeId = c.SupportRepId
GROUP BY SalesRep
)