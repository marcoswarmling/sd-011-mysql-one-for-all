CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.nome AS nome
FROM SpotifyClone.Historico_reproducao AS h
INNER JOIN SpotifyClone.Cancoes AS c ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.Usuarios AS u ON h.usuario_id = u.usuario_id
ORDER BY usuario, nome;
