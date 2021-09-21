CREATE VIEW perfil_artistas AS
  SELECT
    artists.name AS artista,
    albuns.name_album AS album,
    COUNT(fart.user_id) AS seguidores
  FROM 
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.album AS albuns ON albuns.artist_id = artists.artist_id
      INNER JOIN
    SpotifyClone.followed AS fart ON fart.artist_id = artists.artist_id
  GROUP BY 
    artista,
    album
  ORDER BY 
    seguidores DESC,
    artista ASC,
    album ASC;
    