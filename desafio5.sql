CREATE VIEW top_2_hits_do_momento AS
SELECT
c.nome AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_cancao AS u_c
ON c.cancao_id = u_c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u_c.usuario_id = u.usuario_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
