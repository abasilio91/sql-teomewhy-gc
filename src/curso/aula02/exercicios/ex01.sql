-- Qual o player com a maior taxa de HS media? e a menor?

SELECT
    idPlayer,
    AVG (100.0 * qtHS/qtKill) as txHS
FROM tb_lobby_stats_player
GROUP BY idPlayer
ORDER BY txHS DESC