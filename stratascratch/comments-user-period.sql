-- Total comments per user in the 30-day period up to and including 2020-02-10. 

/*
  (1) Filter by sum of comments and the specified date period
  (2) Group by user_id
*/

-- Browse the table
SELECT * FROM fb_comments_count
ORDER BY created_at; 

SELECT user_id, SUM(number_of_comments) AS total_comments
FROM fb_comments_count
-- Filter the date (lowest & highest)
WHERE created_at BETWEEN '2020-02-10'::DATE - 30 AND '2020-02-10'::DATE
GROUP BY user_id
-- Sum total comments for users only if total_comments > 0
HAVING SUM(number_of_comments) > 0; 
