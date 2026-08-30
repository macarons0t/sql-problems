-- Find libraries from the 2016 circulation year that have no email address provided but have their notice 
-- preference set to email.

/*
  (1) Normal filtering based on the requested conditions
  (2) return the home library code
*/

SELECT DISTINCT home_library_code FROM library_usage
WHERE circulation_active_year = '2016' 
AND provided_email_address IS FALSE AND notice_preference_definition LIKE '%email%';
