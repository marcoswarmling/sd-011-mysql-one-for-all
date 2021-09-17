CREATE VIEW cancoes_premium AS
SELECT
c.nome AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_cancao AS u_c
ON c.cancao_id = u_c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u_c.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE p.nome IN ('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;
