CREATE VIEW cancoes_premium AS 
SELECT s.song AS 'nome',
COUNT(*) AS 'reproducoes' FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.histories AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.subscriptions AS sb
ON u.subscription_id = sb.subscription_id
WHERE subscription IN ('Familiar', 'Universitário')
GROUP BY `nome`
ORDER BY `nome`;
