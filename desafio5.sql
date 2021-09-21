CREATE VIEW top_2_hits_do_momento AS
SELECT s.title AS `cancao`,
COUNT(h.song_id) AS `reproducoes`
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.rep_history AS h
ON s.song_id = h.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
