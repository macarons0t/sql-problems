-- Find all inspections which are part of an inactive programme. 

/**
(1) Simple filtering to find programmes with an inactive status.
(2) Easy way to encompass a selected column in UPPER(), since LIKE is case-sensitive. 
**/ 

SELECT * FROM los_angeles_health_inspections
WHERE UPPER(program_status) LIKE UPPER('%inactive%'); 
