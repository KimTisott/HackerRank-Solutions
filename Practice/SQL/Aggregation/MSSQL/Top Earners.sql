SELECT TOP 1 earnings, COUNT(*)
  FROM (SELECT salary * months AS earnings
        FROM employee
       ) AS ee
 GROUP BY earnings
 ORDER BY earnings DESC