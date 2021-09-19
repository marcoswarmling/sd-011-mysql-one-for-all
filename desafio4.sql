CREATE VIEW top_3_artistas AS
SELECT
(SELECT a.artist
FROM  artists AS a
WHERE a.artist_id = f.artist_id) AS artista,
COUNT(user_id) AS seguidores
FROM followers AS f
GROUP BY artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
