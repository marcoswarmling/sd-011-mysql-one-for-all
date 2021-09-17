DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_artista varchar(100))
BEGIN
SELECT 
    artista_nome AS artista, nome_album AS album
FROM
    SpotifyClone.albuns ab
    INNER JOIN SpotifyClone.artistas atr ON ab.artista_id = atr.artista_id
WHERE
    atr.artista_nome = nome_artista
ORDER BY album;

END $$

DELIMITER ;
