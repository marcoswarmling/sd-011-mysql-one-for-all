CREATE VIEW top_2_hits_do_momento AS
  SELECT
    songs.name_song AS cancao,
    COUNT(history.song_id) AS reproducoes
  FROM
    SpotifyClone.songs AS songs
      INNER JOIN
    SpotifyClone.reproduction_history AS history ON songs.song_id = history.song_id
  GROUP BY cancao
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2;
