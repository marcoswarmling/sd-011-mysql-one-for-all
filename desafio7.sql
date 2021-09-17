CREATE VIEW perfil_artistas AS
SELECT
ar.nome AS 'artista',
al.nome AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.usuario_artista AS u_ar
ON ar.artista_id = u_ar.artista_id
GROUP BY album
ORDER BY seguidores DESC, artista, album;
