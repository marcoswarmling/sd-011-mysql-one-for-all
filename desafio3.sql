CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS `usuario`,
s.title AS `nome`
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.rep_history AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.song AS s
ON h.song_id = s.song_id
ORDER BY `usuario`, `nome`;
