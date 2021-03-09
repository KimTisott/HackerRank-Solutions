   SET @r1=0, @r2=0, @r3=0, @r4=0;
SELECT MIN(d), MIN(p), MIN(s), MIN(a)
  FROM (SELECT CASE WHEN Occupation = 'Doctor' THEN (@r1 := @r1 + 1)
                    WHEN Occupation = 'Professor' THEN (@r2 := @r2 + 1)
                    WHEN Occupation = 'Singer' THEN (@r3 := @r3 + 1)
                    WHEN Occupation = 'Actor' THEN (@r4 := @r4 + 1) END AS row_index,
               CASE WHEN Occupation = 'Doctor' THEN name END AS d,
               CASE WHEN Occupation = 'Professor' THEN name END AS p,
               CASE WHEN Occupation = 'Singer' THEN name END AS s,
               CASE WHEN Occupation = 'Actor' THEN name END AS a
          FROM occupations
         ORDER BY name
       ) AS t
 GROUP BY row_index
;
