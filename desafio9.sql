DELIMITER $$

CREATE PROCEDURE albuns_do_artista()
BEGIN
    SELECT * FROM sakila.actor;
END $$

DELIMITER ;
