SELECT * FROM (SELECT TOP 1 city, LEN(city) AS city_length
                 FROM station
                ORDER BY city_length, city
              ) AS s
                UNION
SELECT * FROM (SELECT TOP 1 city, LEN(city) AS city_length
                 FROM station
                ORDER BY city_length DESC, city
              ) AS l
