SELECT 
E.FirstName || ' ' || E.LastName AS SalesRep,
COUNT(C.customerId) AS RepresentedCusotmers
FROM Employee E
FULL JOIN Customer C ON C.SupportRepId = E.EmployeeId
GROUP BY SalesRep;