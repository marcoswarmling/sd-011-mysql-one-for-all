CREATE VIEW faturamento_atual AS
SELECT round(min(plano.valor), 2) AS faturamento_minimo,
  round(max(plano_valor), 2) AS faturamento_maximo,
  round(avg(plano_valor), 2) AS faturamento_medio,
  round(sum(plano_valor), 2) AS faturamento_total
FROM SpotifyClone.planos AS pl
  INNER JOIN SpotifyClone.usuarios AS usr ON pl.plano_id =  usr.plano_id;
