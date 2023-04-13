SELECT
    idPlayer,
    avg(flWinner) as winRate,
    count(distinct idLobbyGame) as qtLobby
FROM tb_lobby_stats_player

GROUP BY idPLayer
HAVING qtLobby >= 10 -- filtra informações depois do agrupamento
ORDER BY winRate DESC