CREATE VIEW top_3_artistas AS
SELECT
(SELECT A.artist
FROM  artists AS a
WHERE f.artist_id = a.artist_id) AS artista,
COUNT(user_id) AS seguidores
FROM followers AS f
GROUP BY artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;