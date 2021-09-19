CREATE VIEW  top_3_artistas AS
select artistas.nomeArtista as artista, COUNT(seguindo_artistas.usuario_id) as seguidores
from SpotifyClone.artistas as artistas
INNER JOIN SpotifyClone.seguindo_artistas as seguindo_artistas
on artistas.artista_id = seguindo_artistas.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
