SELECT doctor, professor, singer, actor 
  FROM (SELECT name, occupation, ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS rownumber 
          FROM occupations
       )
 PIVOT (MAX(name) FOR occupation IN ('Doctor' AS doctor,
                                     'Professor' AS professor,
                                     'Singer' AS singer,
                                     'Actor' AS actor
                                    )
       ) ORDER BY rownumber
;
