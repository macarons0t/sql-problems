-- Returns the user ID of all users that have created at least one ‘Refinance’ submission 
-- and at least one ‘InSchool’ submission.


-- Method 1: Filtering
SELECT user_id
FROM loans
-- filter for relevant loan types
WHERE type IN ('Refinance','InSchool')
GROUP BY user_id
-- filter for records with at least 1 submission
HAVING COUNT (DISTINCT type) > 1; 

-- Method 2: INTERSECT
-- Returns rows of each of the 2 queries, excluding duplicate rows
SELECT user_id
FROM loans
WHERE type = 'Refinance'

INTERSECT

SELECT user_id
FROM loans
WHERE type = 'InSchool'; 

-- Method 3: Subquery
SELECT DISTINCT user_id 
FROM loans
WHERE type = 'Refinance' AND user_id IN
  (SELECT user_id
  FROM loans
  WHERE type = 'InSchool'); 
