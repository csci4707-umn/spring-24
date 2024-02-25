-- 6. List all employees who are not support representative to any customer.

SELECT DISTINCT
  e.employee_id
FROM
  employee e,
  customer c
WHERE
  e.employee_id NOT IN ( SELECT DISTINCT support_rep_id FROM customer);