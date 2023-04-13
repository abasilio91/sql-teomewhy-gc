SELECT
    100.0 * SUM(t1.qtHs)/SUM(t1.qtKill) as txHsTribo
FROM tb_lobby_stats_player as t1

JOIN tb_players_medalha as t2
ON t1.idPlayer = t2.idPlayer

JOIN tb_medalha as t3
ON t2.idMedal = t3.idMedal

WHERE t3.descMedal IN ('Tribo Gaules', 'Missão da Tribo')