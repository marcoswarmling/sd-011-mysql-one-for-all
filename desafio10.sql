use SpotifyClone;

DELIMITER $$
 
CREATE FUNCTION quantidade_musicas_no_historico (usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT;
SELECT COUNT(hist.cancao_id) as quantidade_musicas_no_historico
from SpotifyClone.historico_de_reproducoes as hist
INNER JOIN SpotifyClone.cancoes as cancoes
on cancoes.cancao_id = hist.cancao_id
where hist.usuario_id = usuario_id INTO quantidade_musicas_no_historico;
return quantidade_musicas_no_historico;
END $$

DELIMITER ;
