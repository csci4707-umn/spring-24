-- 7. Find the name of the most expensive track.

SELECT DISTINCT name
FROM track
WHERE unit_price = ( SELECT MAX(unit_price) FROM track );