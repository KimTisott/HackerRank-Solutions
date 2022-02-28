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


/*
Output:
    All prime numbers

Condition:
    1. Prime numbers that are less than or equal to 1000
    2. Print result on a single line
    3. Use ampersand (&) as separator instead of a space
    
Note:
    Prime numbers properties: Any whole number greater than 1 that is divisible only by 1 and itself, is defined as a prime number
*/

-- This concatenate the output with '&' as separator
SELECT GROUP_CONCAT(n SEPARATOR '&')
-- Two information_schema.tables were created because it has to store 1000 rows and one table is not enough (someone online says it only contains 63 rows per table), so two tables together can store 63 * 63 rows which is > 1000
FROM 
    (
    SELECT @num := @num+1 as n 
    FROM
        information_schema.tables t1,
        information_schema.tables t2,
        (SELECT @num := 1) tmp
    ) tempNum
-- This limits the output to be less than or equal to 1000 as required
WHERE n <= 1000 
-- This part is to make sure the output is not in the set of non-prime number, hence prime number. For n in the set where n can be divided by d with a remainder of 0 and n is not d.
AND NOT EXISTS
    (
    SELECT * 
    FROM 
        (SELECT @nu := @nu+1 as d 
         FROM
            information_schema.tables t1,
            information_schema.tables t2,
            (SELECT @nu := 1) tmp1
            LIMIT 1000
        ) tatata
    WHERE n % d = 0 AND n <> d
    )
