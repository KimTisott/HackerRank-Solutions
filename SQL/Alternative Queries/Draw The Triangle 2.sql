   SET @R = 0;
SELECT REPEAT('* ', @R := @R + 1)
  FROM information_schema.tables
 WHERE @R < 20
