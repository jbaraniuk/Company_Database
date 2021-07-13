/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT ssn, COUNT (*) AS NumberOfDependents 
FROM Employee INNER JOIN Dependent ON ssn = essn
WHERE (SELECT COUNT (*) FROM Dependent WHERE ssn = essn) >= 3
GROUP BY ssn
ORDER BY NumberOfDependents;
