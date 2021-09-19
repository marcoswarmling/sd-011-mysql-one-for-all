CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT m.music 
FROM  musics AS m
WHERE pm.music_id = m.music_id) AS cancao,
COUNT(user_id) AS reproducoes
FROM played_musics AS pm
GROUP BY pm.music_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
