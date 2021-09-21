CREATE VIEW top_3_artistas AS
  SELECT
    artists.name AS artista,
    COUNT(DISTINCT fart.user_id) AS seguidores
  FROM
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.followed AS fart ON artists.artist_id = fart.artist_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3;
