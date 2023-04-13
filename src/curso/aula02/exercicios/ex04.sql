-- Qual o histórico de DAP?
-- Qual foi o maior dia de DAP?
/*
    DAP: Daily active player 
*/

SELECT 
    date(dtCreatedAt) as dtDAP,
    COUNT(distinct idPlayer) as DAP
FROM tb_lobby_stats_player

GROUP BY dtDAP
ORDER BY DAP DESC