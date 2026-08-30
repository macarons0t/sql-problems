-- Find the base pay for Police Captains

/*
  (1) Filter the records for Police Captains
  (2) Output the employee name, basepay columns
*/

-- Browse the data 
SELECT * FROM sf_public_salaries
ORDER BY jobtitle ASC;

-- Since some positions within the jobtitle are both in miniscule and majuscule, we can either use ILIKE
-- which is not case-sensitive or LIKE (case sensitive) on both sides of the equation to make sure both 
-- search and results are in majuscule. 

-- Filter by ILIKE
SELECT 
  employeename, basepay
FROM sf_public_salaries
WHERE jobtitle ILIKE '%captain%police%' OR jobtitle ILIKE '%police%captain%'; 

-- Filter by LIKE
SELECT 
  employeename, basepay
FROM sf_public_salaries
WHERE UPPER(jobtitle) LIKE UPPER('%captain%police%') OR UPPER(jobtitle) LIKE UPPER('%police%captain%'); 
