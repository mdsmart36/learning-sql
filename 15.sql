SELECT Playlist.PlaylistId, Playlist.Name, COUNT(*) as [Total # of Tracks] FROM PlaylistTrack
INNER JOIN Playlist ON PlaylistTrack.PlaylistId == Playlist.PlaylistId
GROUP BY Playlist.PlaylistId ORDER BY Playlist.PlaylistId