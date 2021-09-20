DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM artistas_seguindo WHERE OLD.usuario_id = usuario;
DELETE FROM historico_reproducoes WHERE OLD.usuario_id = usuario;
END $$
DELIMITER ;
