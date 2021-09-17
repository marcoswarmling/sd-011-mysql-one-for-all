CREATE VIEW top_2_hits_do_momento AS 
SELECT 
    m.musica_nome AS cancao,
    COUNT(m.musica_nome) as reproducoes
FROM
    SpotifyClone.historico_reproducao hr
    INNER JOIN SpotifyClone.usuarios u
    INNER JOIN SpotifyClone.musicas m ON u.usuario_id = hr.usuario_id
    AND m.musica_id = hr.musica_id
GROUP BY cancao
order by reproducoes desc
LIMIT 2;
