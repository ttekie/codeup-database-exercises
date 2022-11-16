USE employees;

# Each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
    JOIN dept_manager dm ON e.emp_no = dm.emp_no
    JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%'
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
    JOIN dept_manager dm ON e.emp_no = dm.emp_no
    JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%'
    AND e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(title)
FROM titles t
    JOIN employees e ON e.emp_no = t.emp_no
    JOIN dept_emp de ON e.emp_no = de.emp_no
WHERE de.dept_no LIKE '%9'
  AND t.to_date LIKE '9%'
  AND de.to_date LIKE '9%'
GROUP BY title ORDER BY COUNT(title) DESC;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary
FROM salaries s
  JOIN employees e ON e.emp_no = s.emp_no
  JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%'
    AND s.to_date LIKE '9%'
ORDER BY d.dept_name;


