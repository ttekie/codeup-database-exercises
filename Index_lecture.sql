USE employees;

# SELECT * FROM employees e;
#
# SHOW INDEXES FROM employees;
#
# SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;
#
# ALTER TABLE salaries ADD INDEX salary_index (salary);

# index exercise
USE codeup_test_db;

SHOW TABLES;

SHOW INDEXES FROM albums;

DESCRIBE albums;

ALTER TABLE albums ADD UNIQUE unique_artist_name (artist_name, album_name);

INSERT INTO albums (artist_name, album_name, release_date, sales, genre) VALUES('Metallica', 'Metallica', 1991, 21.2, 'Thrash metal, Heavy metal');

SHOW CREATE TABLE albums;