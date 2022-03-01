SELECT c.company_code, c.founder,
       COUNT(DISTINCT l.lead_manager_code),
       COUNT(DISTINCT s.senior_manager_code),
       COUNT(DISTINCT m.manager_code),
       COUNT(DISTINCT e.employee_code)
  FROM company AS c, 
       lead_manager AS l, 
       senior_manager AS s, 
       manager AS m, 
       employee AS e
 WHERE c.company_code = l.company_code
   AND l.lead_manager_code = s.lead_manager_code
   AND s.senior_manager_code = m.senior_manager_code
   AND m.manager_code = e.manager_code
 GROUP BY c.company_code, c.founder
 ORDER BY company_code
