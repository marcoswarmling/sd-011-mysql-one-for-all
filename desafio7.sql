CREATE VIEW perfil_artistas AS
SELECT A.artista  AS artista,
AL.album AS album,
(
SELECT COUNT(artista) 
FROM artistas_seguindo
WHERE artista = A.artista_id
) AS seguidores
FROM albuns AS AL
INNER JOIN artistas AS A
ON A.artista_id = AL.artista_id
ORDER BY seguidores DESC, artista, album;
