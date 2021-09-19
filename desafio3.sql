USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT U.nome AS usuario,
M.musica AS nome
FROM usuarios AS U
INNER JOIN historico_reproducoes AS HR
ON HR.usuario = U.usuario_id
INNER JOIN musicas AS M
ON M.musica_id = HR.musicas_reproduzidas
ORDER BY usuario, nome;
