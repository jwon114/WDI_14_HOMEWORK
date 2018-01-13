TRUNCATE TABLE MOVIES;
TRUNCATE TABLE SEARCH_HISTORIES;

ALTER SEQUENCE movies_id_seq RESTART WITH 1;
ALTER SEQUENCE search_histories_id_seq RESTART WITH 1;

INSERT INTO MOVIES (title, year, rated, genre, released, runtime, language, director, actors, plot, ratings, poster, imdb_id) VALUES ('Thor: The Dark World', '2013', 'PG-13', 'Action, Adventure, Sci-Fi', '08 Nov 2013', '112 min','English', 'Alan Taylor', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Anthony Hopkins', 'When Dr. Jane Foster gets cursed with a powerful entity known as the Aether, Thor is heralded of the cosmic event known as the Convergence and the genocidal Dark Elves.', '[{"Source": "Internet Movie Database","Value": "7.0/10"},{"Source": "Rotten Tomatoes","Value": "66%"},{"Source": "Metacritic","Value": "54/100"}]', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1_SX300.jpg', 'tt1981115');