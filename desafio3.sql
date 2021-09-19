CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario, C.cancao_nome AS nome
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.Historico_de_reproducao AS HR
ON HR.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.Cancoes AS C
ON HR.cancao_id = C.cancao_id
ORDER BY usuario, cancao_nome;
