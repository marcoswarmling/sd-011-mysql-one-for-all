CREATE VIEW top_3_artistas AS 
SELECT 
    artista_nome AS artista, COUNT(artista_nome) AS seguidores
FROM
    SpotifyClone.artistas_seguidos ars
    INNER JOIN SpotifyClone.artistas a ON ars.artista_id = a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
