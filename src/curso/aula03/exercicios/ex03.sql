SELECT
    t1.descMapName,
    COUNT(DISTINCT t1.idLobbyGame) as qtLobby
FROM tb_lobby_stats_player as t1

JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

WHERE t2.descCountry = 'ar'

GROUP BY t1.descMapName
ORDER BY qtLobby DESC