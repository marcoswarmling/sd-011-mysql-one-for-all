use SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE on SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes
where OLD.usuario_id = historico_de_reproducoes.usuario_id;
DELETE FROM SpotifyClone.seguindo_artistas
where OLD.usuario_id = seguindo_artistas.usuario_id;
END $$
DELIMITER ;
