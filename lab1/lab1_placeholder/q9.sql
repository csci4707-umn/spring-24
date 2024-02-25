-- 9. Find the support reps who are supporting customers from both USA and Canada but not from Australia.

SELECT DISTINCT support_rep_id
FROM customer
WHERE country = 'USA'
INTERSECT
SELECT DISTINCT support_rep_id
FROM customer
WHERE country = 'Canada'
EXCEPT
SELECT DISTINCT support_rep_id
FROM customer
WHERE country = 'Australia';
