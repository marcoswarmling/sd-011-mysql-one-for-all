USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
    SELECT 
    artista AS 'artista',
    al.nome AS 'album'
    FROM SpotifyClone.albuns AS al
    INNER JOIN SpotifyClone.artistas AS ar
    ON al.artista_id = ar.artista_id
    WHERE ar.nome = artista
    ORDER BY album;
END $$

DELIMITER ;
