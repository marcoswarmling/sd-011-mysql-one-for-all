create VIEW faturamento_atual as
select MIN(planos.valor) as faturamento_minimo, MAX(planos.valor) as faturamento_maximo,
ROUND(AVG(planos.valor), 2)	as faturamento_medio, SUM(planos.valor) as faturamento_total
from SpotifyClone.planos as planos
INNER JOIN SpotifyClone.usuarios as usuarios  
on usuarios.plano_id = planos.plano_id;
