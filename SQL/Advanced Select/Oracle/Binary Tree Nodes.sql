SELECT n, CASE WHEN p IS NULL THEN 'Root'
               WHEN EXISTS(SELECT p
                             FROM bst
                            WHERE b.n = p
                          ) THEN 'Inner'
               ELSE 'Leaf'
           END
  FROM bst b
 ORDER BY n
;
