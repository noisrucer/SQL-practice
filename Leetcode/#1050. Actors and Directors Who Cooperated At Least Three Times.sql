-- # Write your MySQL query statement below
SELECT t.actor_id, t.director_id FROM ActorDirector t
GROUP BY t.actor_id, t.director_id
HAVING COUNT(t.timestamp) >= 3;