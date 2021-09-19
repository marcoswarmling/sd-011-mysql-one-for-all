CREATE VIEW  historico_reproducao_usuarios as
SELECT(usuarios.nomeUsuario)  as usuario, cancoes.nomeCancao as nome
from SpotifyClone.usuarios 
INNER JOIN SpotifyClone.historico_de_reproducoes as hist
on hist.usuario_id = usuarios.usuario_id
INNER JOIN SpotifyClone.cancoes as cancoes
on hist.cancao_id = cancoes.cancao_id
ORDER BY `usuario`, `nome`;
