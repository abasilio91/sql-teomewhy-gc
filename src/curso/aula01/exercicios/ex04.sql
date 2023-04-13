-- Selecione as estatísticas dos players que tiveram mais de 50% de HS em uma partida
SELECT
    idLobbyGame,
    idPlayer,
    qtKill,
    qtHs,
    ROUND (100.0 * qtHS/qtKill, 2) as txHS
FROM tb_lobby_stats_player
WHERE txHS > 50.0