/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT ssn, COUNT (*) AS NumberOfSonsDaughters
FROM Employee INNER JOIN Dependent
ON ssn = essn
WHERE (Select Count (*) from Dependent
	WHERE relationship = 'Son') >= 1
AND (SELECT COUNT (*) from Dependent
	WHERE relationship ='Daughter') >= 1
GROUP BY ssn
HAVING COUNT (*) > 1
ORDER BY ssn;