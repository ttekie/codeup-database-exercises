# USE employees;
#
# SELECT birth_date FROM employees
#     WHERE emp_no IN (SELECT emp_no FROM dept_manager);

USE codeup_test_db;

INSERT INTO preferences (person_id , album_id) VALUES ((SELECT album_id FROM albums WHERE album_name = 'Come On Over'),
   (SELECT person_id FROM persons WHERE first_name = 'Tareq'));

DELETE FROM preferences WHERE person_id = 7;