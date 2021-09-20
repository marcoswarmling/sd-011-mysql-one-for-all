CREATE VIEW top_3_artistas AS
  SELECT artistas.artista AS 'artista', COUNT(seguindo.usuario_id) AS 'seguidores' FROM seguindo
  INNER JOIN artistas ON seguindo.artista_id = artistas.artista_id
  GROUP BY artistas.artista
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
