USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);
# Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name LIKE 'Aamod'
);

# Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM employees e
    JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9%' AND e.gender = 'F';

# Bonus 1. Find all the department names that currently have female managers.
SELECT d.dept_name
FROM departments d
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9%' AND e.gender = 'F';

# Bonus 2. Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = 158220
);




