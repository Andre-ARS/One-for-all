SELECT 
a.artist AS artista,
alb.title AS album,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums alb
	ON alb.artist_id = a.id
INNER JOIN SpotifyClone.followers f
	ON f.artist_id = a.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;