CREATE VIEW cancoes_premium AS
  SELECT musicas.musica AS 'nome', COUNT(usuarios.usuario_id) AS 'reproducoes' FROM reproduzidas
  INNER JOIN musicas ON reproduzidas.musica_id = musicas.musica_id
  INNER JOIN usuarios ON reproduzidas.usuario_id = usuarios.usuario_id
  INNER JOIN planos ON usuarios.plano_id = planos.plano_id
  WHERE planos.plano = 'familiar' OR planos.plano = 'universitario'
  GROUP BY musicas.musica
  ORDER BY `nome`;
