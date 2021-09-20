DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_pesquisado INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_of_songs INT;
SELECT COUNT(*)
FROM SpotifyClone.Cancoes AS C
INNER JOIN SpotifyClone.Historico_de_reproducao AS HR
ON HR.cancao_id = C.cancao_id AND HR.usuario_id = usuario_pesquisado
INTO number_of_songs;
RETURN number_of_songs;
END $$
DELIMITER ;