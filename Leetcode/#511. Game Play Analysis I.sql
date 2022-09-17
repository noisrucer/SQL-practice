# Write your MySQL query statement below
# SELECT A.player_id, A.event_date AS first_login FROM Activity A
# HAVING A.event_date = (
#     SELECT MIN(B.event_date) FROM Activity B
#     GROUP BY B.player_id
#     HAVING B.player_id = A.player_id
# );

SELECT A.player_id, MIN(A.event_date) AS 'first_login' FROM Activity A
GROUP BY A.player_id;
