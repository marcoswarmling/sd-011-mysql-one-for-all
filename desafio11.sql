CREATE VIEW cancoes_premium AS 
SELECT s.song AS 'nome',
COUNT(h.song_id) AS 'reproducoes' FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.histories AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
AND u.user_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
