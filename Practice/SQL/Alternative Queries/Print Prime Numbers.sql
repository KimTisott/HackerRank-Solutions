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

   SET @number = 1;
   SET @divisor = 1;

-- This concatenate the output with '&' as separator.
SELECT GROUP_CONCAT(n SEPARATOR '&')
  FROM (SELECT @number := @number + 1 AS n 
          -- Two information_schema.tables were created because it has to store 1000 rows and one table is not enough.
          -- Someone online says it only contains 63 rows per table, so two tables together can store 63 * 63 rows which is > 1000.
          FROM information_schema.tables AS t1, 
               information_schema.tables AS t2
         -- This limits the output to be less than or equal to 1000 as required
         LIMIT 1000
       ) AS n1
 -- This part is to make sure the output is not in the set of non-prime number, hence prime number.
 -- For n in the set where n can be divided by d with a remainder of 0 and n is not d.
 WHERE NOT EXISTS(SELECT *
                    FROM (SELECT @divisor := @divisor + 1 AS d
                            FROM information_schema.tables AS t1, 
                                 information_schema.tables AS t2
                           LIMIT 1000
                         ) AS n2
                   WHERE n % d = 0 AND n <> d)
