CREATE VIEW faturamento_atual AS
SELECT MIN(P.valor_plano) AS faturamento_minimo,
FORMAT(MAX(P.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(P.valor_plano), 2) AS faturamento_medio,
FORMAT(SUM(P.valor_plano), 2) AS faturamento_total
FROM usuarios AS U
INNER JOIN planos AS P
ON P.plano_id = U.plano_id;
