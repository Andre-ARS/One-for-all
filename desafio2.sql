SELECT 
COUNT(DISTINCT music.title) AS cancoes,
COUNT(DISTINCT artist.artist) AS artistas,
COUNT(DISTINCT album.title) AS albuns
FROM SpotifyClone.musics AS music
INNER JOIN SpotifyClone.albums AS album
  ON music.album_id = album.id
INNER JOIN SpotifyClone.artists AS artist
  ON album.artist_id = artist.id;