SELECT CAST(s.lat_n AS DECIMAL(6, 4))
  FROM station AS s
 WHERE (SELECT COUNT(lat_n)
          FROM station
         WHERE lat_n < s.lat_n
       )
       =
       (SELECT COUNT(lat_n)
          FROM station
         WHERE lat_n > s.lat_n
       )