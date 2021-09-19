CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao_nome AS cancao, COUNT(HR.usuario_id) AS reproducoes
FROM SpotifyClone.Cancoes AS C
INNER JOIN SpotifyClone.Historico_de_reproducao AS HR
ON HR.cancao_id = C.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
