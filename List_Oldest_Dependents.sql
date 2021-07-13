/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT essn AS SSN, dependent_name AS FirstName, bdate AS BirthDate
FROM Dependent 
WHERE bdate = (SELECT MIN (bdate) FROM Dependent)
ORDER BY essn;