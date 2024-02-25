-- 2. List the titles of all albums by Green Day.

SELECT DISTINCT
  ab.title
FROM
  album ab,
  artist ar
WHERE
  ar.artist_id = ab.artist_id
  AND ar.name = 'Green Day';
