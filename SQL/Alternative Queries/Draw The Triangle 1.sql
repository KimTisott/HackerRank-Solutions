   SET @R = 21;
SELECT REPEAT('* ', @R := @R - 1)
  FROM information_schema.tables
