-- SQL Querys to find insights on DVD rental Database
-- Use '--' to comment code.

-- Challenge 1: Rentals Returned After July 17, 2005

SELECT 
  COUNT(return_date) 
FROM 
  rental
WHERE 
  return_date > ‘2005-07-17’;


-- Challenge 2: Actors That Have a Last Name Beginning with “A”

SELECT 
  COUNT(*) 
FROM 
  actor
WHERE 
  last_name LIKE ‘A%’;

-- Challenge 3: Number of Unique Districts in the Customer Database
SELECT 
  COUNT(DISTINCT(district)) 
FROM 
  address;

-- Challenge 4: Returning the Actual Lists of Districts from Challenge #3
SELECT 
  DISTINCT(district) 
FROM 
  address;

-- Challenge 5: Cheap, (Mildly) Naughty Films
SELECT 
  COUNT(*) 
FROM 
  film
WHERE 
  rating = ‘R’ AND replacement_cost BETWEEN 5 AND 15;

-- Challenge 6: Where in the World are Films Containing “Truman”?
SELECT 
  COUNT(*) 
FROM 
  film
WHERE 
  title LIKE ‘%Truman%’;


