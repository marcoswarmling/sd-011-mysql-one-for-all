DELIMITER $$

CREATE FUNCTION `quantidade_musicas_no_historico` (id INT)

RETURNS INT READS SQL DATA

BEGIN
  DECLARE hist_song_qty INT;

SELECT COUNT(*) AS `quantidade_musicas_no_historico`
  FROM SpotifyClone.reproduction_history

WHERE user_id = id INTO hist_song_qty;

RETURN hist_song_qty;
END $$

DELIMITER ;
