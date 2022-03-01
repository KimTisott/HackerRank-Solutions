SELECT c.company_code, c.founder,
       COUNT(DISTINCT l.lead_manager_code),
       COUNT(DISTINCT s.senior_manager_code),
       COUNT(DISTINCT m.manager_code),
       COUNT(DISTINCT e.employee_code)
  FROM company c, 
       lead_manager l, 
       senior_manager s, 
       manager m, 
       employee e
 WHERE c.company_code = l.company_code
   AND l.lead_manager_code = s.lead_manager_code
   AND s.senior_manager_code = m.senior_manager_code
   AND m.manager_code = e.manager_code
 GROUP BY c.company_code, c.founder
 ORDER BY company_code
;
