DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS IN READS SQL DATA
BEGIN
DECLARE history_total;
SELECT COUNT(*) FROM SpotifyClone.rep_history
WHERE user_id = id INTO history_total;
RETURN history_total;
END $$

DELIMITER ;
