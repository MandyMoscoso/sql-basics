-- In the employee.sql file, write out the code for the following problems:

-- List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';


-- Find the birthdate for the youngest employee.
SELECT birth_date FROM employee
ORDER BY birth_date desc
limit 1;

-- Find the birthdate for the oldest employee.
SELECT birth_date FROM employee
ORDER BY birth_date 
limit 1;


-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city ='Lethbridge'
GROUP BY city
