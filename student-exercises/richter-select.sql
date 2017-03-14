-- USE rockStarDay2;

SELECT * FROM individual;

SELECT * FROM band;


-- Ex2

SHOW COLUMNS FROM band;
SELECT ID, name, genre FROM band;


-- Ex3

SELECT * FROM individual
WHERE LastName = 'Jennings';

SELECT ID, LastName
FROM individual
WHERE DeceasedDate IS NOT NULL;

SELECT ID, LastName, BirthDate
FROM individual
WHERE Year(BirthDate) > 1940;

SELECT * FROM individual 
WHERE ID IN (1,3,5,7,19);


-- Ex4

SELECT * FROM band
WHERE isTogether = 1;

SELECT ID, name
FROM band
WHERE ID = 4;


-- Ex5

SELECT * 
FROM band 
WHERE name LIKE '% and %';

SELECT *
FROM individual
WHERE firstName LIKE '_im';

SELECT *
FROM band
WHERE name LIKE '%s';


-- Ex10

SELECT batting.playerID
, batting.teamID
, batting.battingAvg
, player.ID
, player.lastName
, player.firstName
FROM batting
INNER JOIN player ON player.ID = batting.playerID;

SELECT roster.*
, player.*
, team.*
FROM roster
INNER JOIN player ON roster.playerID = player.ID
INNER JOIN team ON roster.teamID = team.ID;


-- Ex11 - Order By

SELECT batting.battingAvg
, batting.ID
, team.teamName
FROM batting
INNER JOIN team ON team.ID = batting.teamID
ORDER BY batting.battingAvg DESC;

SELECT * FROM baseball.vbattingleaders;

SELECT firstName
, lastName
, ABBR
, hits 
FROM baseball.vbattingleaders
ORDER BY hits DESC;

SELECT firstName
, lastName
, ABBR
, hits 
FROM baseball.vbattingleaders
ORDER BY hits ASC;

SELECT firstName
, lastName
, ABBR
, atBats 
FROM baseball.vbattingleaders
ORDER BY ABBR ASC, atBats DESC;


