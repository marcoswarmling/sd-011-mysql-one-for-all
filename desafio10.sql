USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE cancoes_no_historico INT;
    SELECT COUNT(*)
    FROM SpotifyClone.usuario_cancao AS u_c
    WHERE u_c.usuario_id = user_id INTO cancoes_no_historico;
    RETURN cancoes_no_historico;
END $$

DELIMITER ;
