
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(45))
BEGIN
SELECT
(SELECT art.artist ) AS artista,
(SELECT alb.album ) AS album
FROM albuns AS alb
INNER JOIN artists AS art
ON art.artist_id = alb.artist_id
WHERE artista = art.artist
ORDER BY album;
END $$
DELIMITER ;
