-- Qual o mapa mais jogado?

SELECT
    descMapName,
    COUNT(DISTINCT idLobbyGame) as qtPartidas,
    COUNT(*) as qtPartidasPlayer
FROM tb_lobby_stats_player
GROUP BY descMapName
ORDER BY qtPartidas DESC 