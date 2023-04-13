-- compara a última com a penúltima

WITH tb_lag as (
    SELECT
        t1.idLobbyGame,
        t1.idPlayer,
        t1.qtKill,
        lag(t1.qt1Kill) OVER (PARTITION BY t1.idPlayer ORDER BY t1.idLobbyGame) as lagQtKill
    FROM tb_lobby_stats_player as t1
    ORDER BY t1.idPlayer, t1.idLobbyGame
)

SELECT *,
    100.0 * t1.qtKill / t1.lagQtKill - 100 as odds
FROM tb_lag as t1
WHERE t1.lagQtKill IS NOT NULL
