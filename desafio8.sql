DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM reproduzidas WHERE reproduzidas.usuario_id = OLD.usuario_id;
  DELETE FROM seguindo WHERE seguindo.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
