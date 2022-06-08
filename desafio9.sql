SELECT 
COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic h
INNER JOIN SpotifyClone.users u
	ON u.id = h.user_id
WHERE user = 'Bill';