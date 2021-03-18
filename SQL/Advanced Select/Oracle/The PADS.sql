SELECT CONCAT(name, CONCAT('(', CONCAT(SUBSTR(occupation, 1, 1), ')')))
  FROM occupations
 ORDER BY name
;
SELECT CONCAT('There are a total of ', CONCAT(COUNT(occupation), CONCAT(' ', CONCAT(LOWER(occupation), 's.')))) AS total
  FROM occupations
 GROUP BY occupation
 ORDER BY total
;
