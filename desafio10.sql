DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA BEGIN
DECLARE total INT;
SELECT COUNT(hs.usuario_id)
FROM SpotifyClone.historico_musical AS hs
WHERE hs.usuario_id = userID INTO total;
RETURN total;
END $$
DELIMITER ;
