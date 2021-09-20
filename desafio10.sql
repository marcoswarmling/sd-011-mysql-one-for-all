DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_total INT;
SELECT COUNT(hr.usuario_id)
FROM SpotifyClone.Historico_reproducao hr
WHERE hr.user_id = usuarioID
INTO songs_total;
RETURN songs_total;
END $$
DELIMITER ;
