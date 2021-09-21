CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    user.user_name AS usuario,
    songs.name_song AS nome
  FROM
    SpotifyClone.user AS user
      INNER JOIN
    SpotifyClone.reproduction_history AS history ON user.user_id = history.user_id
      INNER JOIN
    SpotifyClone.songs AS songs ON songs.song_id = history.song_id
ORDER BY usuario, nome;
