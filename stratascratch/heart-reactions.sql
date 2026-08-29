-- Find the posts with a heart reaction

/**
(1) Join the two tables, posts and reactions.
(2) Filter and return all columns from the posts table.
**/

SELECT DISTINCT(p.*) FROM facebook_reactions AS r
INNER JOIN facebook_posts AS p
ON p.post_id = r.post_id
WHERE r.reaction = 'heart';
