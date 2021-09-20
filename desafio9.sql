DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN ARTISTA VARCHAR(20))
BEGIN
SELECT ar.nome AS 'artista',
al.nome AS 'album'
FROM SpotifyClone.Artistas ar
INNER JOIN SpotifyClone.Albuns al
ON ar.artista_id = al.artista_id
WHERE ar.nome = ARTISTA;
END $$
DELIMITER ;
