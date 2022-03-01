SELECT CAST(MAX(lat_n) AS DECIMAL(7, 4))
  FROM station
 WHERE lat_n < 137.2345
