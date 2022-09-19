-- 1st Solution
-- SELECT s.name FROM SalesPerson s WHERE s.sales_id NOT IN(
--     SELECT DISTINCT o.sales_id FROM Orders o
--     WHERE o.com_id IN (SELECT c.com_id FROM Company c WHERE c.name='Red')
-- )

-- # 2nd Solution - JOIN
select salesperson.name
from orders o join company c on (o.com_id = c.com_id and c.name = 'RED')
right join salesperson on salesperson.sales_id = o.sales_id
where o.sales_id is null