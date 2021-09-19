CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(price), 2) AS faturamento_minimo,
FORMAT(MAX(price), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL (price)), 2) AS faturamento_medio,
FORMAT(SUM(price), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u 
ON p.plan_id = u.plan_id;
