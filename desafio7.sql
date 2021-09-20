CREATE VIEW perfil_artistas AS
SELECT ar.nome AS artista,
al.nome AS album,
COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.Seguindo_Artistas AS sa
ON al.artista_id = sa.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;