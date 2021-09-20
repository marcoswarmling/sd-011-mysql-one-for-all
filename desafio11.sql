CREATE VIEW cancoes_premium AS
SELECT m.music AS nome,
COUNT(p.music_id) AS reproducoes
FROM musics AS m
INNER JOIN played_musics AS p
ON m.music_id = p.music_id
INNER JOIN users AS u
ON u.user_id = p.user_id
AND u.user_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
