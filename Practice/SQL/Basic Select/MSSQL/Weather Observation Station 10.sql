SELECT DISTINCT city
  FROM station
 WHERE city NOT LIKE '%[aeiou]'
