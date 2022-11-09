# Aggregate Functions

USE employees;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT AVG(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;

SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name
ORDER BY COUNT(first_name) DESC;
