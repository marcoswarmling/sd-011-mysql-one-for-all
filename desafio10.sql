DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(20))
  RETURNS INT READS SQL DATA BEGIN
    DECLARE qtd_musicas INT;
    SELECT COUNT(*) FROM reproduzidas
    INNER JOIN usuarios ON reproduzidas.usuario_id = usuarios.usuario_id
    WHERE usuarios.usuario_id = id
    INTO qtd_musicas;
    RETURN qtd_musicas;
  END $$
DELIMITER ;
