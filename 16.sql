SELECT Track.Name as [Track Name], Album.Title as [Album Title], MediaType.Name as [Media Type], Genre.Name as [Genre] FROM Track
INNER JOIN Album ON Track.AlbumId == Album.AlbumId
INNER JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
INNER JOIN Genre ON Track.GenreId == Genre.GenreId