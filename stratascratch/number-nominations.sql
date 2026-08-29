-- Count the number of movies for which Abigail Breslin was nominated for an Oscar.

/*
  (1) Count the number of distinct movies which were nominated.
*/

-- ILIKE is not case-sensitive, unlike LIKE.

SELECT COUNT(DISTINCT movie) FROM oscar_nominees
WHERE nominee ILIKE '%Abigail Breslin%';
