SELECT DISTINCT h.hacker_id, h.name
  FROM hackers AS h
       INNER JOIN submissions AS s
       ON h.hacker_id = s.hacker_id
       INNER JOIN challenges AS c
       ON s.challenge_id = c.challenge_id
       INNER JOIN difficulty AS d
       ON c.difficulty_level = d.difficulty_level
 WHERE s.score = d.score AND c.difficulty_level = d.difficulty_level
 GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
 ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC
;
