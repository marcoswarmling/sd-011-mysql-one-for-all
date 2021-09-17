CREATE VIEW perfil_artistas as 
SELECT 
    a.artista_nome AS artista,
    ab.nome_album AS album,
    (SELECT COUNT(*)
        FROM
            SpotifyClone.artistas_seguidos ars
        WHERE
            ars.artista_id = a.artista_id
        GROUP BY artista_id) AS seguidores
FROM
    SpotifyClone.albuns ab
    INNER JOIN SpotifyClone.artistas a ON a.artista_id = ab.artista_id
ORDER BY seguidores DESC , artista , album;
