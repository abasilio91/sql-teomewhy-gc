SELECT 
    t1.idPlayer,
    t1.qtKill,
    t1.qtHs,
    t3.descMedal,
    100.0 * t1.qtHs / t1.qtKill as txHs
FROM tb_lobby_stats_player as t1

JOIN (    
    SELECT
        t1.idPlayer,
        t1.idMedal,
        t2.descMedal,
        t1.flActive
    FROM tb_players_medalha as t1

    JOIN tb_medalha as t2
    ON t1.idMedal = t2.idMedal

    WHERE t1.flActive = 1 AND t2.descMedal IN ("Tribo Gaules","Missão da Tribo")
) as t3

ON t1.idPlayer = t3.idPLayer

GROUP BY t1.idPLayer
ORDER BY txHs DESC