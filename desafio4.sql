SELECT
u.user As usuario,
IF(MAX(YEAR(h.stream_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.historic h
	ON h.user_id = u.id
GROUP BY h.user_id
ORDER BY u.user;