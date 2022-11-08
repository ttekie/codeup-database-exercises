USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name LiKE '%sus%';

SELECt emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees
      WHERE emp_no < 20000 AND last_name IN ('Herber', 'Baek')
      OR first_name = 'Shridhar';

SELECT first_name , last_name , gender FROM  employees WHERE (last_name = 'Bolotov' OR last_name = 'Baek') AND gender = 'M';

SELECT * FROM salaries
         WHERE salary NOT BETWEEN  50000 AND 100000;

SELECT birth_date FROM employees
                  WHERE birth_date NOT LIKE '195%';

SELECT birth_date, hire_date FROM employees
    WHERE birth_date NOT LIKE '195%'
    AND hire_date NOT LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%-01';
