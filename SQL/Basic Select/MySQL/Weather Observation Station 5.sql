SELECT * FROM (SELECT city, LENGTH(city)
                 FROM station
                ORDER BY LENGTH(city), city
                LIMIT 1
              ) AS s
                UNION
SELECT * FROM (SELECT city, LENGTH(city)
                 FROM station
                ORDER BY LENGTH(city) DESC, city
                LIMIT 1
              ) AS l
