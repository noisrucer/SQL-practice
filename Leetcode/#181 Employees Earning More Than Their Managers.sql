-- 1st Solution
SELECT E1.name AS Employee
FROM Employee AS E1, Employee AS E2
WHERE E1.managerId = E2.id AND E1.salary > E2.salary;

-- 2nd Solution
SELECT e.name AS Employee
FROM Employee AS e, Employee as m
WHERE e.managerId IS NOT NULL AND e.managerId = m.ID AND e.salary > m.salary;

-- 3rd Solution - Join
SELECT E1.name AS Employee
FROM Employee AS E1 JOIN Employee AS E2
ON E1.managerId = E2.id AND E1.salary > E2.salary;

-- 4th Solution - Nested Queries
SELECT E1.name AS Employee FROM Employee AS E1
WHERE E1.salary > (SELECT E2.salary FROM Employee AS E2 WHERE E1.managerId = E2.id);