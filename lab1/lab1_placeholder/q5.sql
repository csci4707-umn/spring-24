-- 5. Find all distinct pairs of playlists that have the same name.

SELECT
  p1.playlist_id AS id_1,
  p1.name AS name_1,
  p2.playlist_id AS id_2,
  p2.name AS name_2
FROM
  playlist p1,
  playlist p2
WHERE
  p1.playlist_id < p2.playlist_id
  AND p1.name = p2.name;