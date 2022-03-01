SELECT s.name
  FROM students AS s
       INNER JOIN packages AS p1
       ON s.id = p1.id
       INNER JOIN friends AS f
       ON s.id = f.id
       INNER JOIN packages AS p2
       ON f.friend_id = p2.id
 WHERE p2.salary > p1.salary
 ORDER BY p2.salary
