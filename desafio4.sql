CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.Artistas AS a
INNER JOIN SpotifyClone.Seguindo_Artistas AS s
ON s.artista_id = a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
