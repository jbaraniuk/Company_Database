/* 
Justin Baraniuk 
October 1, 2019
*/

SELECT sex, COUNT(*) AS number FROM EMPLOYEE
GROUP BY sex
ORDER BY sex;