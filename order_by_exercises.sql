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

