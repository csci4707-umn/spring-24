-- 4. List the first name of all managers and the first name of all employees who work for them.

SELECT
  e1.first_name AS mng_first_name,
  e2.first_name AS emp_first_name
FROM
  employee e1,
  employee e2
WHERE
  e2.reports_to = e1.employee_id;