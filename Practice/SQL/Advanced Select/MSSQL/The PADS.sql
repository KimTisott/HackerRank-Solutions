SELECT CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')')
  FROM occupations
 ORDER BY name
SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS total
  FROM occupations
 GROUP BY occupation
 ORDER BY total
