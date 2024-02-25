-- 3. List the titles of all albums that have track(s) in the playlist "Grunge".

SELECT DISTINCT
  a.title
FROM
  playlist p,
  playlist_track pt,
  track t,
  album a
WHERE
  p.playlist_id = pt.playlist_id
  AND pt.track_id = t.track_id
  AND t.album_id = a.album_id
  AND p.name = 'Grunge';