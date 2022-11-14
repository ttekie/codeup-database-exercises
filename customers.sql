CREATE DATABASE IF NOT EXISTS sales;

CREATE TABLE customers(
    customer_id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    name VARCHAR (20) NOT NULL,
    age  INT NOT NULL,
    address CHAR (25) ,
    salary DECIMAL (18, 2),
    content VARCHAR(250),
    PRIMARY KEY (customer_id)
);

INSERT INTO customers(name, age, address, salary)
VALUES ('tesfalem', 36, '28939 whaterburg st', 5000),
       ('siloam', 29, '9230 burningam st', 60856),
       ('senaya', 34, '8473 clinton st', 10000),
       ('Anaya', 27, '7299 machester rd', 2078);

DELETE FROM customers WHERE age = 34;