CREATE VIEW faturamento_atual AS
  SELECT
    CAST(MIN(planos.valor) AS decimal(10,2)) AS 'faturamento_minimo',
    MAX(planos.valor) AS 'faturamento_maximo',
    ROUND(AVG(planos.valor), 2) AS 'faturamento_medio',
    ROUND(SUM(planos.valor), 2) AS 'faturamento_total'
  FROM usuarios
  INNER JOIN planos ON usuarios.plano_id = planos.plano_id;
