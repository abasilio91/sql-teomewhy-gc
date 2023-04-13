SELECT idPlayer,
    descCountry,
    CASE
        WHEN descCountry = 'br' THEN 'huehuehue'
        WHEN descCountry IN ('ar','pe','cl','uy','py','bo') 
                        THEN 'manito'
        WHEN descCountry IN ('ca','na') 
                        THEN 'enia'
        ELSE 'foda-se'
    END AS Nacionalidade
FROM tb_players