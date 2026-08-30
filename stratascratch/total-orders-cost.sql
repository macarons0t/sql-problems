-- Find the total cost of each customer's orders

-- Browse both data tables
-- Join on customer id
SELECT * FROM customers;
SELECT * FROM orders; 

SELECT 
  c.id,
  c.first_name, 
  SUM(o.total_order_cost) AS total_order_cost
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.cust_id
GROUP BY c.id, c.first_name
ORDER BY c.first_name ASC; 
