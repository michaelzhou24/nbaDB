--Displays players grouped by team, show when creating/deleting a new player
--Join
CREATE VIEW teamPlayers AS 
SELECT teamplaysin.name AS Team, playerplaysfor.name AS Player, 
playerplaysfor.number AS Num, playerplaysfor.position AS Pos
FROM teamplaysin Inner JOIN playerplaysfor
ON teamplaysin.id=playerplaysfor.teamID
ORDER BY Team

Go --remove Go in mysql

--Displays number of players per team
--Nested aggregation w group by
CREATE VIEW numPlayersPerTeam AS
SELECT teamplaysin.name AS Team, count(playerplaysfor.id) AS numPlayers
FROM teamplaysin, playerplaysfor
Group BY Team
Order by Team;

Go --remove Go in mysql

--Displays all players with a z-score higher than x
--Selection
--TODO// replace 1 with user input x
Select P.name AS Player, P.number AS Num, P.teamID AS Team, P.zscore AS 'Z-Score'
From playerplaysfor P
Where 'Z-Score' >= 1;

--Displays all players who placed x in year y
--Division
--TODO// replace 1 with user input x, 2016 with user input y
Select P.name As Player
From playerplaysfor P
Where not exists
(Select * 
From seasonof S 
Where not exists
(Select T.name
From teamplaysin T
Where T.name = S.teamID AND T.name = P.teamID AND S.year = 2016 AND
S.standing = 1));

--Displays teams with number of sponsors and total amount of $ funded by all 
--sponsors combined
--Aggregation
Select F.teamID As Team, count(Distinct F.sponsorID) As '# of Sponsors',
sum(Distinct F.amount) As 'Total Sponsorship$'
From funds F
Group by Team
Order by Team;

--TODO// Projection