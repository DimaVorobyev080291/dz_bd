CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	musical_genres VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	performer VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresPerformers (
	genres_id INTEGER REFERENCES Genres(id),
	performer_id INTEGER REFERENCES Performers(id),
	CONSTRAINT pk PRIMARY KEY (genres_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	Album_title VARCHAR(100) NOT NULL,
    year_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumsPerformers (
	albums_id INTEGER REFERENCES Albums(id),
	performer_id INTEGER REFERENCES Performers(id),
	CONSTRAINT pk2 PRIMARY KEY (albums_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	albums_id INTEGER NOT NULL REFERENCES Albums(id),
	track_name VARCHAR(100) NOT NULL,
	duration numeric NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	Collection_title VARCHAR(100) NOT NULL,
    year_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS TracksCollections (
	track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collections(id),
	CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
);