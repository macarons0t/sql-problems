-- Return the current salary of each employee.

/* 
  (1) Use analytical functions here;
  (2) Note all columns to be returned, and use the row_number function since it forces a distinct rank 
      for any rows with the same salary. 
  (3) Filter for the relevant row.
*/

SELECT
    id,
    first_name,
    last_name,
    department_id,
    salary
FROM
  (SELECT 
    *,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY salary DESC) AS rn
  FROM ms_employee_salary)
WHERE rn = 1; 

