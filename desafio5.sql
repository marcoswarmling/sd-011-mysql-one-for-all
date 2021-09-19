CREATE VIEW top_2_hits_do_momento as
SELECT cancoes.nomeCancao as cancao, count(hist.cancao_id) as reproducoes
from SpotifyClone.cancoes as cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes as hist
on cancoes.cancao_id = hist.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
