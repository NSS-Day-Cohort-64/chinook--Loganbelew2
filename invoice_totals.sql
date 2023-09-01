SELECT 
i.Total,
c.FirstName as Customer,
c.Country,
e.FirstName || ' ' || e.LastName as SalesAgent
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c. SupportRepId