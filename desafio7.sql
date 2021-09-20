CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT a.artist AS 'artista', al.album AS 'album',
COUNT(f.artist_id) AS 'seguidores' FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al ON a.artist_id = al.artist_id 
INNER JOIN SpotifyClone.`following` AS f ON f.artist_id = ar.artist_id
GROUP BY f.artist_id, a.artist, al.album
ORDER BY seguidores DESC, artista, album;
