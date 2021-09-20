CREATE VIEW estatisticas_musicais AS 
SELECT 
(SELECT COUNT(song_id) FROM SpotifyClone.songs) AS 'cancoes',
(SELECT COUNT(artista_id) FROM SpotifyClone.artists) AS 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.albums) AS 'albuns';
