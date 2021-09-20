CREATE VIEW perfil_artistas AS
  SELECT
    artistas.artista,
    albuns.album,
    (SELECT COUNT(*) FROM seguindo WHERE seguindo.artista_id = artistas.artista_id) AS 'seguidores'
  FROM albuns
  INNER JOIN artistas ON albuns.artista_id = artistas.artista_id
  ORDER BY `seguidores` DESC, artistas.artista, albuns.album;
