-- 10. Return playlist_id containing tracks of all kinds of media type


SELECT DISTINCT
  pt1.playlist_id
FROM
  track t1,
  playlist_track pt1
WHERE
  t1.track_id = pt1.track_id
  AND NOT EXISTS (
    ( SELECT media_type_id FROM media_type)
    EXCEPT 
    ( SELECT DISTINCT
        media_type_id
      FROM
        track t2,
        playlist_track pt2
      WHERE
        t2.track_id = pt2.track_id
        AND pt2.playlist_id = pt1.playlist_id));

-- 2nd solution
-- SELECT playlist_id
-- FROM playlist_track pt, track t
-- WHERE pt.track_id = t.track_id
-- GROUP BY pt.playlist_id
-- HAVING COUNT(DISTINCT t.media_type_id) = (SELECT COUNT(DISTINCT media_type_id) FROM track);