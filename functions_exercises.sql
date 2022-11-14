USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%' ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE 'E%E';

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT CONCAT(first_name, ' ', last_name)
AS fullName
FROM employees
WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND DAY(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
AND month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
AND month(birth_date) = 12
AND day(birth_date) = 25 ORDER BY hire_date DESC;


SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25 AND year(hire_date) LIKE '199%' ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;



