USE rockStarDay2;

/*
SELECT * FROM individual;

SELECT * FROM band;
*/

-- Ex2
-- SHOW COLUMNS FROM band;
-- SELECT ID, name, genre FROM band;

-- Ex3
/*
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
*/

-- Ex4
SELECT * FROM band
WHERE isTogether = 1;

SELECT ID, name
FROM band
WHERE ID = 4;