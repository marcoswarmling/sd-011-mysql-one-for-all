DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON users
FOR EACH ROW BEGIN
DELETE FROM following_artists WHERE user_id = old.user_id;
DELETE FROM historic WHERE user_id = old.user_id;
END $$
DELIMITER ;
