CREATE VIEW perfil_artistas AS
SELECT AR.artista AS artista, AL.album_nome AS album, COUNT(ASG.usuario_id) AS seguidores
FROM SpotifyClone.Artistas AS AR
INNER JOIN SpotifyClone.Albuns AS AL
ON AL.artista_id = AR.artista_id
INNER JOIN SpotifyClone.Artistas_seguidos AS ASG
ON ASG.artista_id = AR.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
