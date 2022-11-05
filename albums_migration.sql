USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    album_id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(35),
    name VARCHAR(35),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(40),
    PRIMARY KEY (album_id)
);