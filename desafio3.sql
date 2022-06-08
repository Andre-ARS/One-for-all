SELECT
u.user As usuario,
COUNT(h.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(m.duration)/60,2) AS total_minutos
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.historic h
  ON u.id = h.user_id
INNER JOIN SpotifyClone.musics m
  ON h.music_id = m.id
GROUP BY h.user_id
ORDER BY u.user;