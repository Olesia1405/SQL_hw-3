--Название и продолжительность самого длительного трека
SELECT track_name, track_duration
FROM tracks
WHERE track_duration = (SELECT MAX(track_duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM tracks
WHERE track_duration >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_date
FROM collections 
where collection_date >= '20180101' and collection_date <= '20201231'

--Исполнители, чьё имя состоит из одного слова
SELECT artist_name
FROM artists
WHERE CHAR_LENGTH(artist_name) - CHAR_LENGTH(REPLACE(artist_name, ' ', '')) = 0;

--Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM tracks
WHERE LOWER(track_name) LIKE '%мой%' OR LOWER(track_name) LIKE '%my%';

--Количество исполнителей в каждом жанре
select genre_name, count(id_artist) from Genres 
join Artists_Genres on Genres.id_genre = Artists_Genres.id_genre
group by genre_name;

--Количество треков, вошедших в альбомы 2019-2020 годов
select count(album_name) from Tracks
join albums on Tracks.id_album = Albums.id_album
where album_release_year >= '20190101' and album_release_year <= '20201231';

--Средняя продолжительность треков по каждому альбому
select album_name, avg(track_duration) from Tracks
join Albums on Tracks.id_album = Albums.id_album
group by album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году
select artist_name from Artists 
join Artists_Album on Artists.id_artist = Artists_Album.id_artist
join Albums on Albums.id_album = Artists_Album.id_album
where album_release_year not between '20200101' and '20201231' 
group by artist_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выбрана Madonna)
select collection_title from Collections
join Collection_Tracks on Collection_Tracks.id_collection = Collections.id_collection
join Tracks on Collection_Tracks.id_track = Tracks.id_track
join Albums on Tracks.id_album = Albums.id_album
join Artists_Album on Artists_Album.id_album = Albums.id_album
join Artists on Artists_Album.id_artist = Artists.id_artist
where artist_name = 'Madonna'
group by collection_title;
