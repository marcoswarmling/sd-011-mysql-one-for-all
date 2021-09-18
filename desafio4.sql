USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT A.artista AS artista,
COUNT(ARS.usuario) AS seguidores
FROM artistas_seguindo AS ARS
INNER JOIN artistas AS A
ON  A.artista_id = ARS.artista 
GROUP BY A.artista
ORDER BY COUNT(ARS.usuario) DESC
LIMIT 3;
