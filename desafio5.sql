CREATE VIEW top_2_hits_do_momento AS
SELECT M.musica AS cancao,
COUNT(*) AS reproducoes
FROM historico_reproducoes AS HREP
INNER JOIN musicas AS M
ON  M.musica_id = HREP.musicas_reproduzidas 
GROUP BY HREP.musicas_reproduzidas
ORDER BY reproducoes DESC, cancao
LIMIT 2;
