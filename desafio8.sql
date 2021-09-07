USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.artista_seguidores WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico_reproducao WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
