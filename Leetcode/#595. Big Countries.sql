# Write your MySQL query statement below
SELECT W.name, W.population, W.area
FROM World W
WHERE W.area >= 3000000 OR W.population >= 25000000;