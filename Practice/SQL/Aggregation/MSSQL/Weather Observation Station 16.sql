SELECT CAST(MIN(lat_n) AS DECIMAL(6, 4))
  FROM station
 WHERE lat_n > 38.7780
