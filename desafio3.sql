CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user AS usuario, m.music AS nome
FROM users AS u
INNER JOIN played_musics AS pm
ON u.user_id = pm.user_id
INNER JOIN musics AS m
ON m.music_id = pm.music_id
ORDER BY usuario, nome;