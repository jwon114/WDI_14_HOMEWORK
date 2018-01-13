DROP TABLE IF EXISTS search_history;
DROP TABLE IF EXISTS movies;

CREATE TABLE search_history (
	id SERIAL PRIMARY KEY,
	search_name VARCHAR(300),
);

CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	title VARCHAR(300),
	year VARCHAR(10),
	rated VARCHAR(10),
	genre VARCHAR(300),
	released VARCHAR(300),
	runtime VARCHAR(100),
	language VARCHAR(300),
	director VARCHAR(300),
	actors VARCHAR(300),
	plot VARCHAR(600),
	ratings JSON,
	poster VARCHAR(600),
	imdb_id VARCHAR(300)
);