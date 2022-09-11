# 1st Solution
# SELECT DISTINCT p1.email as Email FROM Person p1, Person p2
# WHERE p1.id <> p2.id AND p1.email = p2.email;

# 2nd Solution
# SELECT DISTINCT p1.email as Email FROM Person p1, Person p2
# WHERE p1.id <> p2.id AND p1.email = p2.email;

# 3rd Solution
# SELECT p1.email as Email FROM Person p1
# GROUP BY p1.email
# HAVING COUNT(p1.email) <> 1;

# 4th Solution
# WITH c AS (
#     SELECT email, COUNT(*) as NUM FROM Person GROUP BY email
# )
# SELECT email FROM c WHERE num>1;


