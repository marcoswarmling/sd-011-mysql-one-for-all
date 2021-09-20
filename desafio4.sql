CREATE VIEW top_3_artistas AS
SELECT artist AS 'artista',
COUNT(f.user_id) AS `seguidores` FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.`following` AS f
ON a.artist_id = s.artist_id
GROUP BY a.artist_id
ORDER BY `seguidores` DESC, artist
LIMIT 3;
