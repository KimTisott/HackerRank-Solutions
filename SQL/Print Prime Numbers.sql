   SET @number = 1;
   SET @divisor = 1;
SELECT GROUP_CONCAT(n SEPARATOR '&')
  FROM (SELECT @number := @number + 1 AS n 
          FROM information_schema.tables AS t1, information_schema.tables AS t2
         LIMIT 1000
       ) AS n1
 WHERE NOT EXISTS(SELECT *
                    FROM (SELECT @divisor := @divisor + 1 AS d
                            FROM information_schema.tables AS t3, information_schema.tables AS t4
                           LIMIT 1000
                         ) AS n2
                   WHERE MOD(n, d) = 0 AND n <> d)
;
