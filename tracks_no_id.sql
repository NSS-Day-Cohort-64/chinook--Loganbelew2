SELECT
Track.Name as Track,
 a.Title as Album,
 m.Name as MediaType,
 g.Name as Genre
FROM Track 
JOIN Album a
ON Track.AlbumId = a.AlbumId
JOIN MediaType m 
ON Track.MediaTypeId = m.MediaTypeId
JOIN Genre g 
ON Track.GenreId = g.GenreId