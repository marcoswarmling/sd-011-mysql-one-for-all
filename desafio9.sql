DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
    artists.name AS artista,
    albuns.name_album AS album
  FROM
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.album AS albuns ON albuns.artist_id = artists.artist_id
  WHERE artists.name = artist_name
  ORDER BY name_album;
END $$

DELIMITER ;
