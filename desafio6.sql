CREATE VIEW faturamento_atual AS
select FORMAT(MIN(P.valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(P.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL(P.valor_plano)), 2) AS faturamento_medio,
FORMAT(SUM(P.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.Planos AS P
INNER JOIN SpotifyClone.Usuarios AS U
ON U.plano_id = P.plano_id;
