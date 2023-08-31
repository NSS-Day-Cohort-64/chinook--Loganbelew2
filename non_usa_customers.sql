-- customer full name
-- customer id
-- customer country
SELECT CustomerId, FirstName || ' ' || LastName as fullname, country
FROM Customer
WHERE Country <> 'USA';