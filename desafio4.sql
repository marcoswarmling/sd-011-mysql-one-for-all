CREATE VIEW top_3_artistas AS
SELECT A.artista AS artista, Count(ASG.artista_id) AS seguidores
FROM SpotifyClone.Artistas AS A
INNER JOIN SpotifyClone.Artistas_seguidos AS ASG
ON A.artista_id = ASG.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
