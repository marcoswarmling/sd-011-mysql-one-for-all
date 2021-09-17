CREATE VIEW estatisticas_musicais AS 
SELECT 
    (SELECT count(*) from SpotifyClone.musicas) as cancoes,
    (SELECT count(*) from SpotifyClone.artistas) as artistas,
    (select count(*) FROM SpotifyClone.albuns) as albuns;
