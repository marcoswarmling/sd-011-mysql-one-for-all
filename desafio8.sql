USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
  BEGIN
    DELETE FROM SpotifyClone.usuario_artista AS u_a
    WHERE u_a.usuario_id = OLD.usuario_id;

    DELETE FROM SpotifyClone.usuario_cancao AS u_c
    WHERE u_c.usuario_id = OLD.usuario_id;
  END $$

  DELIMITER ;
