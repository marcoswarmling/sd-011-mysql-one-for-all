CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT m.music 
FROM  musics AS m
WHERE f.music_id = m.music_id) AS cancao,
COUNT(user_id) AS reproducoes
FROM followers AS f
GROUP BY f.music_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
