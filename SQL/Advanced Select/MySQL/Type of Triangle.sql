SELECT CASE WHEN (a + b <= c OR a + c <= b OR b + c <= a) THEN 'Not A Triangle'
            WHEN (a = b AND b = c) THEN 'Equilateral'
            WHEN (a = b OR b = c OR a = c) THEN 'Isosceles'
            ELSE 'Scalene'
       END
  FROM triangles
