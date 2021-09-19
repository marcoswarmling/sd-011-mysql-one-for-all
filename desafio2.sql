CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM Cancoes) as cancoes,
(SELECT COUNT(*) FROM Artistas) as Artistas,
(SELECT COUNT(*) FROM Albuns) as albuns;
