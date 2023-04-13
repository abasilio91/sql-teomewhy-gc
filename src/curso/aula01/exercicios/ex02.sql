-- Selecione todos os players brasileiros que nasceram e 1992
SELECT *
FROM tb_players
WHERE descCountry = 'br'
AND dtBirth LIKE '1992%'

-- OU, uma forma mais rápida, pois evita as comparações que são feitas no LIKE

-- SELECT *
-- FROM tb_players
-- WHERE descCountry = 'br'
-- AND strftime('%Y', dtBirth) = '1992'