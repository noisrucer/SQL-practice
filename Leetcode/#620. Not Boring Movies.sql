-- # Write your MySQL query statement below
SELECT * FROM Cinema C
WHERE C.id % 2 = 1 AND C.description <> 'boring'
ORDER BY rating DESC;