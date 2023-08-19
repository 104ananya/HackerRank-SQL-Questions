-- Weather Observation Station 1
-- Query a list of CITY and STATE from the STATION table.
select city, state from station;


-- Weather Observation Station 3
--  cities that have an even ID number
select distinct city from station
where mod(id, 2) = 0;


-- Weather Observation Station 4
--  distinct CITY entries in the table.
select count(city) - count(distinct city)
from station;


-- Weather Observation Station 5
-- shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

-- FOR SHORTEST NAME
select city, length(city) from station
order by length(city), city limit 1;

-- FOR LONGEST NAME 
select city, length(city) from station
order by length(city)desc, city limit 1;


--Weather Observation Station 6
-- starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE
(CITY LIKE 'A%' OR
CITY LIKE 'E%' OR
CITY LIKE 'I%' OR
CITY LIKE 'O%' OR
CITY LIKE 'U%' );


-- Weather Observation Station 7
-- ending with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE
(CITY LIKE "%A" OR
CITY LIKE "%E" OR
CITY LIKE "%I" OR
CITY LIKE "%O" OR
CITY LIKE "%U");


-- Weather Observation Station 8
-- vowels (i.e., a, e, i, o, and u) as both their first and last characters.
SELECT DISTINCT CITY
FROM STATION
WHERE
(CITY LIKE "a%" OR
CITY LIKE "e%" OR
CITY LIKE "i%" OR
CITY LIKE "o%" OR
CITY LIKE "u%") 
AND
(CITY LIKE "%a" OR
CITY LIKE "%e" OR
CITY LIKE "%i" OR
CITY LIKE "%o" OR
CITY LIKE "%u" );



-- Weather Observation Station 9
-- do not start with vowels. 
SELECT DISTINCT CITY
FROM STATION
WHERE NOT
(CITY LIKE "A%" OR
CITY LIKE "E%" OR
CITY LIKE "I%" OR
CITY LIKE "O%" OR
CITY LIKE "U%" );


-- Weather Observation Station 10
-- do not end with vowels.
SELECT DISTINCT CITY
FROM STATION
WHERE NOT
(CITY LIKE "%A" OR
CITY LIKE "%E" OR
CITY LIKE "%I" OR
CITY LIKE "%O" OR
CITY LIKE "%U" )


-- Weather Observation Station 11
-- either do not start with vowels or do not end with vowels. 
SELECT DISTINCT CITY
FROM STATION
WHERE NOT
((CITY LIKE "a%" OR
CITY LIKE "e%" OR
CITY LIKE "i%" OR
CITY LIKE "o%" OR
CITY LIKE "u%")
AND
(CITY LIKE "%a" OR
CITY LIKE "%e" OR
CITY LIKE "%i" OR
CITY LIKE "%o" OR
CITY LIKE "%u"));



-- Weather Observation Station 12
-- do not start with vowels and do not end with vowels.
SELECT DISTINCT CITY 
FROM STATION
WHERE NOT
(
(CITY LIKE "A%" OR
CITY LIKE "E%" OR
CITY LIKE "I%" OR
CITY LIKE "O%" OR
CITY LIKE "U%" )
OR
(CITY LIKE "%A" OR
CITY LIKE "%E" OR
CITY LIKE "%I" OR
CITY LIKE "%O" OR
CITY LIKE "%U" ));




