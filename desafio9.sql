DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(100))
BEGIN
SELECT a.name AS `artista`,
ab.title AS `album`
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.artist_id = ab.artist_id WHERE a.name = artist_name
ORDER BY `album`;
END $$

DELIMITER ;