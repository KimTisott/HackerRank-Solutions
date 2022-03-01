SELECT CEILING(AVG(CAST(salary AS DECIMAL(6, 2))) - AVG(CAST(REPLACE(salary, '0', '') AS DECIMAL(6, 2))))
  FROM employees
