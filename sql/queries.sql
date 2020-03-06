CREATE VIEW teamPlayers AS
SELECT teamplaysin.name AS Team, playerplaysfor.name AS Player, playerplaysfor.number, playerplaysfor.position
FROM teamplaysin, playerplaysfor
GROUP BY teamplaysin.name
ORDER BY playerplaysfor.position