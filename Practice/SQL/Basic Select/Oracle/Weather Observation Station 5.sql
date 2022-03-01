SELECT *
  FROM (SELECT city, LENGTH(city) AS city_length
          FROM station
         ORDER BY city_length, city
       )
 WHERE ROWNUM = 1
 UNION
SELECT *
  FROM (SELECT city, LENGTH(city) AS city_length
          FROM station
         ORDER BY city_length DESC, city)
 WHERE ROWNUM = 1
;
