INSERT INTO Genres(musical_genres) 
VALUES
    ('Рок'),
    ('хип-хоп'),
    ('классическая музыка');

INSERT INTO Performers(performer) 
VALUES
    ('Disturbed'),
    ('five finger death punch'),
    ('Баста'),
    ('Д. Шостакович');

INSERT INTO GenresPerformers(genres_id, performer_id) 
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4);

INSERT INTO Albums(Album_title, year_of_release) 
VALUES
    ('Indestructible', 2008),
    ('Asylum', 2010),
    ('American Capitalist', 2011),
    ('And Justice for None', 2020);

INSERT INTO AlbumsPerformers(albums_id, performer_id) 
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2);

INSERT INTO Tracks(albums_id, track_name, duration) 
VALUES
    (2, 'Another Way to Die', 4.12),
    (2, 'Sacrifice', 3.59),
    (3, 'Coming Down', 4.01),
    (3, 'Back for More', 3.22),
    (1, 'The Night', 4.46),
    (4, 'Stuck in My Ways', 3.56);

INSERT INTO Collections(Collection_title, year_of_release) 
VALUES
    ('сборник 1', 2018),
    ('сборник 2', 2021),
    ('сборник 3', 2020),
    ('сборник 4', 1999);

INSERT INTO TracksCollections(track_id, collection_id) 
VALUES
    (1, 1),
    (2, 1),
    (3, 3),
    (1, 3),
    (5, 4),
    (6, 1);