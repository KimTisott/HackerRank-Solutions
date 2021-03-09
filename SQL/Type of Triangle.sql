SELECT IF (a + b <= c OR a + c <= b OR b + c <= a, 'Not A Triangle',
       IF (a = b AND b = c, 'Equilateral',
       IF (a = b OR b = c OR a = c, 'Isosceles', 'Scalene')))
  FROM triangles
;
