SELECT 
m.title AS nome,
COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.musics m
INNER JOIN SpotifyClone.historic h
	ON m.id = h.music_id
INNER JOIN SpotifyClone.users u
	ON u.id = h.user_id
WHERE u.plan_id IN (1,4)
GROUP BY music_id
ORDER BY nome;