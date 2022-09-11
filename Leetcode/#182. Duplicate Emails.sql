# 1st Solution
SELECT DISTINCT p1.email as Email FROM Person p1, Person p2
WHERE p1.id <> p2.id AND p1.email = p2.email;