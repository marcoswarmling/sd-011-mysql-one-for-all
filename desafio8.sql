DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.rep_history
WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.follower
WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
