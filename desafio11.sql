CREATE VIEW cancoes_premium AS
SELECT C.cancao_nome AS nome, COUNT(HR.cancao_id) AS reproducoes
FROM SpotifyClone.Cancoes AS C
INNER JOIN SpotifyClone.Historico_de_reproducao AS HR
ON HR.cancao_id = C.cancao_id
INNER JOIN SpotifyClone.Usuarios AS U
ON U.usuario_id = HR.usuario_id AND U.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
