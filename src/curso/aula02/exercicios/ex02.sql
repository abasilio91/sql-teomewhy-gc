-- Qual o país que possui mais jogadores?

SELECT 
    descCountry,
    COUNT(descCountry) as qtPlayers
FROM tb_players
GROUP BY descCountry
ORDER BY qtPLayers DESC