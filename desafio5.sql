SELECT
m.title As cancao,
COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.musics m
INNER JOIN SpotifyClone.historic h
	ON h.music_id = m.id
GROUP BY h.music_id
ORDER BY reproducoes Desc, m.title
LIMIT 2;