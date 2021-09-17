CREATE VIEW cancoes_premium AS
    SELECT 
        musica_nome AS nome, COUNT(musica_nome) AS reproducoes
    FROM
        SpotifyClone.historico_reproducao hr
        INNER JOIN SpotifyClone.musicas m
        INNER JOIN SpotifyClone.usuarios u ON hr.musica_id = m.musica_id
        AND u.usuario_id = hr.usuario_id
    WHERE
        u.plano_id != 1
    GROUP BY musica_nome
    ORDER BY nome;
