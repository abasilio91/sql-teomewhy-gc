COUNT(CASE WHEN descMapNanme = 'de_mirage' THEN idLobbyGame end) AS qtMirage,
COUNT(CASE WHEN descMapNanme = 'de_nuke' THEN idLobbyGame end) AS qtNuke,
COUNT(CASE WHEN descMapNanme = 'de_inferno' THEN idLobbyGame end) AS qtInferno,
COUNT(CASE WHEN descMapNanme = 'de_vertigo' THEN idLobbyGame end) AS qtVertigo,
COUNT(CASE WHEN descMapNanme = 'de_ancient' THEN idLobbyGame end) AS qtAncient,
COUNT(CASE WHEN descMapNanme = 'de_dust2' THEN idLobbyGame end) AS qtDust2,
COUNT(CASE WHEN descMapNanme = 'de_train' THEN idLobbyGame end) AS qtTrain,
COUNT(CASE WHEN descMapNanme = 'de_overpass' THEN idLobbyGame end) AS qtOverpass