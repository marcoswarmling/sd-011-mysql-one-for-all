CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(valor), 2) AS faturamento_minimo,
FORMAT(MAX(valor), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL (valor)), 2) AS faturamento_medio,
FORMAT(SUM(valor), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u 
ON p.plans_id = u.plans_id;