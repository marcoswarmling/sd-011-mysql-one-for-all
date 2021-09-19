CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.HistoricoMusicas AS hm
ON u.usuario_id = hm.usuario_id
INNER JOIN SpotifyClone.Cancoes AS c
ON hm.cancao_id = c.cancao_id
ORDER BY u.usuario ASC, c.cancao ASC;
