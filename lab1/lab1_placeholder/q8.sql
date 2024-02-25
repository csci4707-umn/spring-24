-- 8. Find the titles of all albums that have a total price of all tracks greater than $20.00.

SELECT
  a.title,
  sum(t.unit_price)
FROM
  album a,
  track t
WHERE
  a.album_id = t.album_id
GROUP BY
  a.title
HAVING
  sum(t.unit_price) > 20;