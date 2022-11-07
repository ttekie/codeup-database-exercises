USE codeup_test_db;

# query all albums released after 1991
# SELECT album_name FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

# query album with genre soft rock
# SELECT album_name FROM albums WHERE genre = 'Soft rock';
DELETE FROM albums WHERE genre = 'Soft rock';

# query albums by artist name 'Shania Twain'
# SELECT album_name FROM albums WHERE artist_name = 'Shania Twain';

DELETE FROM albums WHERE artist_name = 'Shania Twain';