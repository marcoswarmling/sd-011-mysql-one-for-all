DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN buscar_albuns VARCHAR(100))
BEGIN
SELECT A.artista AS artista,
AL.album AS album    
FROM artistas AS A
INNER JOIN albuns AS AL
ON AL.artista_id = A.artista_id
WHERE A.artista = buscar_albuns;
END $$

DELIMITER ;
