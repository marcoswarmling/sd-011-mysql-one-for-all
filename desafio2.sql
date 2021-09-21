CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(DISTINCT songs.name_song) AS cancoes,
    COUNT(DISTINCT artists.name) AS artistas,
    COUNT(DISTINCT albuns.name_album) AS albuns
  FROM
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.album AS albuns ON artists.artist_id = albuns.artist_id
      INNER JOIN
    SpotifyClone.songs AS songs ON songs.album_id = albuns.album_id;
