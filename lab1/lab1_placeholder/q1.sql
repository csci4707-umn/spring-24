-- 1. List distinct invoice billing states from the USA or Canada

SELECT DISTINCT billing_state
FROM invoice
WHERE billing_country = 'USA'
   OR billing_country = 'Canada';