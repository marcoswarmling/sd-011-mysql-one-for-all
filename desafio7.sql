CREATE VIEW perfil_artistas AS
SELECT a.name AS `artista`,
ab.title AS `album`,
COUNT(f.artist_id) AS `seguidores`
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.artist_id = ab.artist_id
INNER JOIN SpotifyClone.follower AS f
ON a.artist_id = f.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
