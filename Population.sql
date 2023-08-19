-- Revising Aggregations - The Count Function
SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000

-- Revising Aggregations - The Sum Function
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA' 


-- Revising Aggregations - Averages
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA'


-- Average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION), 0)
FROM CITY