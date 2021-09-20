DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(20)) BEGIN
  SELECT artistas.artista, albuns.album FROM albuns
  INNER JOIN artistas ON albuns.artista_id = artistas.artista_id
  WHERE artistas.artista = artista
  ORDER BY albuns.album;
END $$ 
DELIMITER ;
