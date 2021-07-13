/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT E.ssn, E.fname, COUNT (S.super_ssn) AS Number 
FROM Employee AS E JOIN Employee AS S ON (S.super_ssn = E.ssn)
GROUP BY E.ssn;
 