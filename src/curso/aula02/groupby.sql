SELECT
    descCountry,
    COUNT(*) as qtLinhas,
    COUNT(DISTINCT idPLayer) as qtPlayers,
    COUNT(DISTINCT descCountry) as qtPaises,
    AVG(date('now') - date(dtBirth)) as avgIdade,
    SUM(flFacebook) as totalFB,
    SUM(flTwitter) as totalTwitter,
    SUM(flTwitch) as totalTwitch
FROM tb_players
GROUP BY descCountry
ORDER BY avgIdade