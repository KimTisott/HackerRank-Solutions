SELECT h.hacker_id, h.name, COUNT(c.hacker_id) AS t
  FROM hackers AS h
       INNER JOIN challenges AS c
       ON c.hacker_id = h.hacker_id
 GROUP BY c.hacker_id, h.name
HAVING t = (SELECT MAX(c1.t1)
              FROM (SELECT COUNT(hacker_id) AS t1
                      FROM challenges
                     GROUP BY hacker_id
                     ORDER BY hacker_id
                   ) AS c1
           )
       OR t IN (SELECT c2.t2
                  FROM (SELECT COUNT(*) AS t2
                          FROM challenges
                         GROUP BY hacker_id
                       ) AS c2
                 GROUP BY c2.t2
                HAVING COUNT(c2.t2) = 1
               )
 ORDER BY t DESC, h.hacker_id
;
