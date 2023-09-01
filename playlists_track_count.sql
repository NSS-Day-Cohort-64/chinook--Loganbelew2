SELECT p.Name, COUNT(pt.TrackId) as TotalTracks
FROM PlayListTrack pt 
JOIN Playlist p
ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name 