-- # Write your MySQL query statement below
UPDATE Salary s
SET s.sex = IF(sex='m', 'f', 'm');