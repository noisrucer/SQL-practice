# Sollution
SELECT o.customer_number FROM Orders o
GROUP BY o.customer_number
ORDER BY COUNT(o.customer_number) DESC
LIMIT 1;

