DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_reproducao
WHERE OLD.usuario_id = usuario_id;
DELETE FROM SpotifyClone.Seguindo_Artistas
WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
