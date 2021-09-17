CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome AS 'usuario',
c.nome AS 'nome'
FROM usuarios AS u
INNER JOIN SpotifyClone.usuario_cancao AS u_c
ON u.usuario_id = u_c.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON u_c.cancao_id = c.cancao_id
ORDER BY usuario, nome;
