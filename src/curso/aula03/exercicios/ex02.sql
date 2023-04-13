SELECT
    t1.idPlayer,
    t2.descCountry,
    AVG(100.0 * t1.qtHS/t1.qtKill) as txHS
FROM tb_lobby_stats_player as t1

JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.idPlayer, t2.descCountry
ORDER BY txHS DESC