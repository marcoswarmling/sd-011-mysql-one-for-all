use SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (in nomeArtista varchar(70))
BEGIN
	SELECT artistas.nomeArtista as artista, albuns.nomeAlbum as album
	from SpotifyClone.artistas as artistas
	INNER JOIN SpotifyClone.albuns as albuns
	on artistas.artista_id = albuns.artista_id
    where artistas.nomeArtista = nomeArtista
	ORDER BY `album` ASC;
END $$

DELIMITER ;
