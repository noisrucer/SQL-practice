# 1st Solution
SELECT c.name as Customers FROM Customers c
WHERE c.id NOT IN (
    SELECT o.customerId FROM Orders o
);

# 2nd Solution
SELECT c.name AS Customers FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId is NULL;

# 3rd Solution
SELECT c.name AS Customers FROM Customers c
WHERE NOT EXISTS (SELECT 1 FROM Orders o WHERE c.id = o.customerId);