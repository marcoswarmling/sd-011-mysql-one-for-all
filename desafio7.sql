CREATE VIEW perfil_artistas AS
SELECT art.artist AS artista,
alb.album_id AS album,
COUNT(fol.user_id) AS seguidores
FROM artists AS art
INNER JOIN albuns AS alb
ON art.artist_id = alb.artist_id
INNER JOIN followers AS fol
ON fol.artist_id = alb.artist_id
GROUP BY artist, album
ORDER BY seguidores DESC, artista, album;