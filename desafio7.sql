create VIEW perfil_artistas as
SELECT (artistas.nomeArtista) as artista, (albuns.nomeAlbum) as album,
COUNT(seguindo_artistas.usuario_id) as seguidores
from SpotifyClone.artistas as artistas
INNER JOIN SpotifyClone.albuns as albuns
on albuns.artista_id = artistas.artista_id
INNER JOIN SpotifyClone.seguindo_artistas as seguindo_artistas
on seguindo_artistas.artista_id = artistas.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
