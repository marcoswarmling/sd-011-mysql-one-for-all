USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
    SELECT 
    artista AS 'artista',
    al.nome AS 'album'
    FROM artistas AS ar
    INNER JOIN albuns AS al
    ON ar.artista_id = al.artista_id
    ORDER BY album;
END $$

DELIMITER ;
