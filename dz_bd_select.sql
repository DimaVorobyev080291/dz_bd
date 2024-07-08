-- задача номер 2

SELECT track_name, duration 
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_name, duration 
FROM tracks
WHERE duration >= '3:30';

SELECT collection_title, year_of_release
FROM collections
WHERE year_of_release >= 2018 AND year_of_release <= 2020;

SELECT performer
FROM performers  
WHERE performer NOT LIKE '% %';

SELECT track_name FROM tracks
WHERE track_name ILIKE 'my %'
OR track_name ILIKE '% my' 
OR track_name ILIKE '% my %'
OR track_name ILIKE 'my'
OR track_name ILIKE 'мой %'
OR track_name ILIKE '% мой' 
OR track_name ILIKE '% мой %'
OR track_name ILIKE 'мой';

-- задача номер 3 

SELECT musical_genres,COUNT(performer) FROM performers
JOIN GenresPerformers ON performers.id = GenresPerformers.performer_id
JOIN genres ON GenresPerformers.genres_id = genres.id
GROUP BY musical_genres;

SELECT count(tracks.id)from tracks  
join albums on albums_id = albums.id 
WHERE year_of_release BETWEEN 2019 AND 2020;

SELECT album_title,AVG(duration) FROM albums
JOIN tracks ON albums.id = tracks.albums_id
GROUP BY album_title;

SELECT DISTINCT performers.performer AS performers FROM performers
WHERE performers.performer NOT IN
(SELECT DISTINCT performers.performer AS performers FROM performers
JOIN AlbumsPerformers ON performers.id = AlbumsPerformers.performer_id 
JOIN albums ON AlbumsPerformers.albums_id = albums.id
WHERE albums.year_of_release = 2020)
ORDER BY performers.performer ;

SELECT collection_title FROM collections d
JOIN trackscollections  cd  ON d.id = cd.collection_id
JOIN tracks t  ON cd.track_id = t.id
JOIN albums a  ON t.albums_id = a.id
JOIN albumsperformers  ma  ON a.id = ma.albums_id
JOIN performers m  ON ma.performer_id = m.id
WHERE m.performer LIKE 'Disturbed';