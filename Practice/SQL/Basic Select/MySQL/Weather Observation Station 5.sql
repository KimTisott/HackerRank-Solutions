SELECT * 
  FROM (SELECT city, LENGTH(city) AS city_length
          FROM station
         ORDER BY city_length, city
         LIMIT 1
       ) AS s
 UNION
SELECT * 
  FROM (SELECT city, LENGTH(city) AS city_length
          FROM station
         ORDER BY city_length DESC, city
         LIMIT 1
       ) AS l
