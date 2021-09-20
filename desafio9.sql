DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_pesquisado VARCHAR(50))
BEGIN
SELECT AR.artista AS artista, AL.album_nome AS album
FROM SpotifyClone.Artistas AS AR
INNER JOin SpotifyClone.Albuns AS AL
ON AL.artista_id = AR.artista_id
WHERE artista_pesquisado = AR.artista
ORDER BY album;
END $$
DELIMITER ;
