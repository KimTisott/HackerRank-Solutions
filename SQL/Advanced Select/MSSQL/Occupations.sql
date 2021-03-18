SELECT doctor, professor, singer, actor
  FROM (SELECT ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) ROWNUMBER, 
               * FROM occupations
       ) AS t
 PIVOT (MAX(name) FOR occupation IN (doctor, professor, singer, actor)
       ) AS p
