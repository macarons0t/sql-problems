-- Find the job titles of the workers with the highest salary among those who have a matching record
-- in the title table, including all job titles of workers with the same highest salaries.

/* 
  (1) Filter on employees with official job titles, i.e. INNER
  (2) Create an analytical function, using RANK()
  (3) Return the job title column, sorted in ascending order
*/

SELECT worker_title
FROM 
  (SELECT *,
    RANK() OVER (ORDER BY w.salary DESC) AS rnk
  FROM worker AS w
  INNER JOIN title AS t
  ON w.worker_id = t.worker_ref_id) AS joined
WHERE rnk = 1; 
