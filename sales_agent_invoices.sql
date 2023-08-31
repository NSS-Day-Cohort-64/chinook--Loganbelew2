SELECT e.FirstName || ' ' || e.LastName as FullName, InvoiceId
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON e.EmployeeId = c.SupportRepId
ORDER BY FullName