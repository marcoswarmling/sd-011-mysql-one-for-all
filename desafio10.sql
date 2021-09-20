DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE reproducoes_usuario INT;
SELECT COUNT(usuario)
FROM historico_reproducoes
WHERE usuario = usuario_id 
INTO reproducoes_usuario;
RETURN reproducoes_usuario;
END $$

DELIMITER ;
