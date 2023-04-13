SELECT 
    COUNT(*), -- número de linhas
    COUNT(DISTINCT idPLayer) as qtPlayers, -- número de players distintos
    COUNT(DISTINCT descCountry) as qtCountry -- número de países diferentes

FROM tb_players