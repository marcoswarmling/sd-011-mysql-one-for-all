CREATE VIEW top_2_hits_do_momento AS
  SELECT musicas.musica AS 'cancao', COUNT(reproduzidas.usuario_id) AS 'reproducoes' FROM reproduzidas
  INNER JOIN musicas ON reproduzidas.musica_id = musicas.musica_id
  GROUP BY musicas.musica
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
