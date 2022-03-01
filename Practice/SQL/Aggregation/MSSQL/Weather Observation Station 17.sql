SELECT TOP 1 CAST(long_w AS DECIMAL(6, 4))
  FROM station
 WHERE lat_n > 38.7780
 ORDER BY lat_n