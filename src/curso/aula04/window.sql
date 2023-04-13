-- Pegar as três primeiras partidas de um player

WITH tb_lobbies as (
    SELECT
        idLobbyGame,
        idPlayer,
        row_number() OVER (PARTITION BY idPLayer ORDER BY idLobbyGame) AS numeroLinha
    FROM tb_lobby_stats_player
    ORDER BY idPlayer
)

SELECT * FROM tb_lobbies
WHERE numeroLinha <= 3
