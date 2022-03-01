SELECT *
  FROM (SELECT earnings, COUNT(*)
        FROM (SELECT salary * months AS earnings
              FROM employee
             )
        GROUP BY earnings
        ORDER BY earnings DESC
       )
 WHERE ROWNUM = 1
;