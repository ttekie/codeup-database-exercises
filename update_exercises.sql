USE codeup_test_db;

# query all albums in the album table
SELECT album_name FROM albums;

# query all albums released before 1980
SELECT album_name FROM albums WHERE release_date < 1980;

# query all albums released by Michael Jackson
SELECT album_name FROM albums WHERE artist_name = 'Michael Jackson';

# Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10 WHERE album_id > 0;

SELECT *FROM albums;

# Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;

SELECT *FROM albums;

# Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist_name = 'Peter Jackson' WHERE album_id = 3;

SELECT *FROM albums;