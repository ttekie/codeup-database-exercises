USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
    WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT last_name FROM employees
    WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees
    WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT DISTINCT last_name FROM employees
    WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT COUNT(last_name), last_name FROM employees
    WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT COUNT(*), first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY first_name;