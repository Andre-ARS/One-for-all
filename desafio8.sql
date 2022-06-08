SELECT 
a.artist AS artista,
alb.title AS album
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums alb
	ON alb.artist_id = a.id
WHERE a.artist = 'Walter Phoenix'
ORDER BY album;