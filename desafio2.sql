CREATE VIEW  estatisticas_musicais as
SELECT
(select COUNT(*)
from SpotifyClone.cancoes) as cancoes,
(select COUNT(*)
from SpotifyClone.artistas) as artistas,
(select COUNT(*) 
from SpotifyClone.albuns) as albuns;
