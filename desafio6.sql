CREATE VIEW faturamento_atual AS
SELECT MIN(planos.valor_plano) AS 'faturamento_minimo',
MAX(planos.valor_plano) AS 'faturamento_maximo', 
ROUND(AVG(planos.valor_plano),2) AS 'faturamento_medio', 
SUM(planos.valor_plano) AS 'faturamento_total' 
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.planos AS planos
ON usuario.plano_id = planos.plano_id;
