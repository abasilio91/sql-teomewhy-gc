WITH tb_membro_tribo AS (
    SELECT *
    FROM tb_players_medalha as t1

    LEFT JOIN tb_medalha as t2
    ON t1.idMedal = t2.idMedal

    WHERE t2.descMedal IN ('Tribo Gaules','Missão da Tribo')
),

tb_hs AS (
    SELECT
        t1.idPlayer,
        t1.qtKill,
        t1.qtHs,
        100.0 * t1.qtHs/t1.qtKill as txHs
    FROM tb_lobby_stats_player as t1
)

SELECT *

FROM tb_hs as t1
JOIN tb_membro_tribo as t2
ON t1.idPLayer = t2.idPLayer