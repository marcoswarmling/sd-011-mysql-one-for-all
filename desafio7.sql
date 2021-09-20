CREATE VIEW perfil_artistas AS
SELECT a.artist AS 'artista', 
al.album AS 'album',
COUNT(artist) AS 'seguidores'
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.`following` AS f
ON f.artist_id = a.artist_id
INNER JOIN SpotifyClone.albums AS al
ON al.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
