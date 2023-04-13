-- Incompleto; Precisa de subquery - Não trouxe a estatística pedida no exercício

SELECT
    t1.idPLayer,
    t3.descMedal,
    100.0 * SUM(DISTINCT t1.flWinner) / COUNT(DISTINCT t1.idLobbyGame) as txWins
FROM tb_lobby_stats_player as t1

JOIN tb_players_medalha as t2
ON t1.idPlayer = t2.idPlayer

JOIN tb_medalha as t3
ON t2.idMedal = t3.idMedal

WHERE t3.descMedal IN ('Membro Plus', 'Membro Premium')

GROUP BY t1.idPlayer
ORDER BY txWins DESC