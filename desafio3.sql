CREATE VIEW historico_reproducao_usuarios AS
SELECT u.`user` AS 'usuario', s.song AS 'nome' 
FROM SpotifyClone.histories AS h
INNER JOIN SpotifyClone.users AS u
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
ON h.song_id = s.song_id 
ORDER BY usuario, nome;
