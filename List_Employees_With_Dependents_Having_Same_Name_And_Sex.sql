/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT E.ssn, E.fname, E.sex
FROM Employee AS E INNER JOIN Dependent AS D
ON E.ssn = D.essn
WHERE E.fname = D.dependent_name AND E.sex = D.sex; 