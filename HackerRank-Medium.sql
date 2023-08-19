-- Higher Than 75 Marks
-- STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

 SELECT NAME
 FROM STUDENTS
 WHERE MARKS > 75 
 ORDER BY RIGHT (NAME, 3), ID ASC


--  Employee Names
-- prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SELECT NAME 
FROM EMPLOYEE
ORDER BY NAME


-- Employee Salaries
-- list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC



-- Types of triangle
SELECT CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR B = C OR C = A THEN 'Isosceles'
    ELSE 'Scalene'
    END
    FROM TRIANGLES;


-- The PADS

SELECT CONCAT(NAME, '(', SUBSTR(OCCUPATION, 1, 1), ')') ALIASNAME
FROM OCCUPATIONS
ORDER BY ALIASNAME;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION ), ' ', LOWER(OCCUPATION ), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION 
ORDER BY COUNT(OCCUPATION), OCCUPATION;


