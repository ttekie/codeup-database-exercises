USE codeup_test_db;

INSERT INTO albums(artist_name, album_name, release_date, sales, genre)
VALUES ('Tupac', '2Pacalypse Now!', 1991, 0.923, 'hiphop');


INSERT INTO albums(artist_name, album_name, release_date, sales, genre)
VALUES('Backstreet Boys', 'millennium', 1999, 24, 'pop');

UPDATE albums SET artist_name = '2Pac' WHERE artist_name = 'Tupac';