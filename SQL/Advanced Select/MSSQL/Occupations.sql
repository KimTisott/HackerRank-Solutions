SELECT doctor, professor, singer, actor
  FROM (SELECT ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rownumber, 
               * FROM occupations
       ) AS t
 PIVOT (MAX(name) FOR occupation IN (doctor, professor, singer, actor)
       ) AS p
