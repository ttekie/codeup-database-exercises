USE codeup_test_db;

# select an albums by names of the artist
SELECT *FROM albums WHERE artist_name = 'Michael Jackson';

# query the year 'Hotel California' released
SELECT release_date FROM albums WHERE album_name = 'Hotel California';

# query the genre for 'Come On Over' album
SELECT genre FROM albums WHERE album_name = 'Come On Over';

# query albums that where releases in 1990s
SELECT album_name FROM albums WHERE release_date BETWEEN 1989 AND 2000;

# query albums that are had less than 25 million certified sales
SELECT album_name FROM albums WHERE sales < 25;

# query all albums with genre of rock
SELECT album_name FROM albums WHERE genre = 'rock';