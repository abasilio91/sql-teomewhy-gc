SELECT
    AVG(qtDistMedalhas) as avgQntMedalhas,
    MIN(qtDistMedalhas) as minQntMedalhas,
    MAX(qtDistMedalhas) as maxQntMedalhas
FROM (
    SELECT 
        idPLayer,
        count(DISTINCT idMedal) as qtDistMedalhas
    FROM tb_players_medalha
    WHERE flActive = 1
    GROUP BY idPlayer
    ORDER BY qtDistMedalhas DESC
)