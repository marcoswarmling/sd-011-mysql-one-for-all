CREATE VIEW top_3_artistas AS
SELECT
a.nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.usuario_artista AS u_a
ON a.artista_id = u_a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
