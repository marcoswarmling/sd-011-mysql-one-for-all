DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_parametro INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;

SELECT 
    COUNT(*)
FROM
    SpotifyClone.historico_reproducao hr
WHERE
    hr.usuario_id = id_parametro INTO qtd_musicas;

RETURN qtd_musicas;

END $$

DELIMITER ;
