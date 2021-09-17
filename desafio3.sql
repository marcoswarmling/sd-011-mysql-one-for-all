CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
    u.usuario_nome AS usuario, m.musica_nome AS nome
FROM 
    SpotifyClone.historico_reproducao hr
    INNER JOIN SpotifyClone.usuarios u
    INNER JOIN SpotifyClone.musicas m ON u.usuario_id = hr.usuario_id
    AND m.musica_id = hr.musica_id
ORDER BY usuario , nome;
