SELECT distinct(t1.id) AS id,
       CASE
           WHEN t1.p_id IS NULL THEN 'Root'
           WHEN t2.id IS NULL THEN 'Leaf'
           ELSE 'Inner'
       END AS TYPE
FROM tree t1
LEFT JOIN tree t2 ON t2.p_id = t1.id;