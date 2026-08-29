-- Calculate the absolute salary differences between two departments

/**
(1) Join the two tables, employees and departments
(2) Either use a CTE or CASE statements to calculate the absolute difference.
**/

-- Method 1: Use CASE statements
SELECT
  ABS(MAX(CASE WHEN d.department = 'marketing' THEN e.salary END) - 
  MAX(CASE WHEN d.department = 'engineering' THEN e.salary END))
FROM db_employee AS e
INNER JOIN db_dept AS d -- here it does not matter that we use INNER or LEFT; NULLS here are not important since we are looking for
-- the MAX salary across each department
ON e.department_id = d.id; 

-- Method 2: CTE
-- Create a CTE that returns the max salary values of the engineering and marketing departments

WITH CTE AS (
  SELECT
    d.department, MAX(e.salary) AS max_salary
  FROM db_employee AS e
    INNER JOIN db_dept AS d
    ON e.department_id = d.id
    GROUP BY d.department
    WHERE d.department IN ('marketing','engineering')
  )

SELECT MAX(max_salary) - MIN(max_salary)
) FROM salary_dept; 
