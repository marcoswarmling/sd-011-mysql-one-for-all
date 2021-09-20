CREATE VIEW historico_reproducao_usuarios AS
  SELECT usuarios.usuario AS 'usuario', musicas.musica AS 'nome' FROM reproduzidas
  INNER JOIN usuarios ON reproduzidas.usuario_id = usuarios.usuario_id
  INNER JOIN musicas ON reproduzidas.musica_id = musicas.musica_id
  ORDER BY `usuario`, `nome`;
