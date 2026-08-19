-- Find all posts which were reacted to with a heart and show all columns from facebook_posts

/**
(1) Inner join used to analyse posts with a 'heart' reaction. 
(2) table_name.* is used as a shortcut to output all columns from the selected table. 
(3) DISTINCT used to return the unique faceook_post. 
**/

SELECT DISTINCT p.* FROM facebook_reactions AS r
INNER JOIN facebook_posts AS p
ON r.post_id = p.post_id
WHERE r.reaction = 'heart';
