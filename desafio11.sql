CREATE VIEW cancoes_premium AS
SELECT s.title AS `nome`,
COUNT(*) `reproducoes`
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.rep_history AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.user AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.subscription AS ss
ON u.subscription_id = ss.subscription_id
WHERE ss.subscription_id != 1
GROUP BY `nome`
ORDER BY `nome`;
