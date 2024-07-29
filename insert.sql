--исполнители
Insert into Artists(id_artist, artist_name) values (1, N'Madonna');
Insert into Artists(id_artist, artist_name) values (2, N'Lana Del Rey');
Insert into Artists(id_artist, artist_name) values (3, N'Taylor Swift');
Insert into Artists(id_artist, artist_name) values (4, N'Michael Jackson');

--жанры
Insert into Genres (id_genre, genre_name) values (1, N'pop');
Insert into Genres (id_genre, genre_name) values (2, N'dance pop');
Insert into Genres (id_genre, genre_name) values (3, N'indie pop');

--альбомы
Insert into Albums (id_album, album_name, album_release_year) values (1, N'Rebel Heart', '20150306');
Insert into Albums (id_album, album_name, album_release_year) values (2, N'Madame X', '20190614');

Insert into Albums (id_album, album_name, album_release_year) values (3, N'Norman Fucking Rockwell!', '20180830');
Insert into Albums (id_album, album_name, album_release_year) values (4, N'Chemtrails Over the Country Club', '20210319');

Insert into Albums (id_album, album_name, album_release_year) values (5, N'Lover', '20190823');
Insert into Albums (id_album, album_name, album_release_year) values (6, N'Folklore', '20200724');

Insert into Albums (id_album, album_name, album_release_year) values (7, N'Thriller', '19821130');
Insert into Albums (id_album, album_name, album_release_year) values (8, N'Bad', '19870831');


--треки
--Madonna
Insert into Tracks (id_track, track_name, track_duration, id_album) values (1, N'Living for Love', '00:03:38', 1);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (2, N'Devil Pray', '00:04:05', 1);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (3, N'Crazy', '00:04:02', 2);


--Lana 
Insert into Tracks (id_track, track_name, track_duration, id_album) values (4, N'How to Disappear', '00:03:48', 3);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (5, N'Happiness Is a Butterfly', '00:04:32', 3);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (6, N'White Dress', '00:05:33', 4);

--Taylor Swift
Insert into Tracks (id_track, track_name, track_duration, id_album) values (7, N'You Need To Calm Down', '00:02:51', 5);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (8, N'Peace', '00:03:54', 6);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (9, N'Hoax', '00:03:40', 6);

-- Michael Jackson
Insert into Tracks (id_track, track_name, track_duration, id_album) values (10, N'Wanna Be Starting Something', '00:06:03', 7);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (11, N'The Way You Make Me Feel', '00:04:59', 8);
Insert into Tracks (id_track, track_name, track_duration, id_album) values (12, N'Speed Demon', '00:04:01', 8);


--сборники
Insert into Collections(id_collection, collection_title, collection_date) values (1, N'collection_1', '20170101');
Insert into Collections(id_collection, collection_title, collection_date) values (2, N'collection_2', '20170302');
Insert into Collections(id_collection, collection_title, collection_date) values (3, N'collection_3', '20180821');
Insert into Collections(id_collection, collection_title, collection_date) values (4, N'collection_4', '20180912');
Insert into Collections(id_collection, collection_title, collection_date) values (5, N'collection_5', '20190604');
Insert into Collections(id_collection, collection_title, collection_date) values (6, N'collection_6', '20201213');
Insert into Collections(id_collection, collection_title, collection_date) values (7, N'collection_7', '20210724');


--связи артистов с жанрами
Insert into Artists_Genres(id_artist, id_genre) values (1, 1);
Insert into Artists_Genres(id_artist, id_genre) values (1, 2);
Insert into Artists_Genres(id_artist, id_genre) values (1, 3);
Insert into Artists_Genres(id_artist, id_genre) values (2, 2);
Insert into Artists_Genres(id_artist, id_genre) values (3, 1);
Insert into Artists_Genres(id_artist, id_genre) values (4, 2);
Insert into Artists_Genres(id_artist, id_genre) values (4, 1);


--связи артистов с альбомами
Insert into Artists_Album(id_artist, id_album) values (1, 1);
Insert into Artists_Album(id_artist, id_album) values (1, 2);
Insert into Artists_Album(id_artist, id_album) values (2, 3);
Insert into Artists_Album(id_artist, id_album) values (2, 4);
Insert into Artists_Album(id_artist, id_album) values (3, 5);
Insert into Artists_Album(id_artist, id_album) values (3, 6);
Insert into Artists_Album(id_artist, id_album) values (4, 7);
Insert into Artists_Album(id_artist, id_album) values (4, 8);

	
--связи сборников с треками
Insert into Collection_Tracks(id_collection, id_track) values (1, 1);
Insert into Collection_Tracks(id_collection, id_track) values (1, 5);
Insert into Collection_Tracks(id_collection, id_track) values (1, 10);
Insert into Collection_Tracks(id_collection, id_track) values (1, 12);
Insert into Collection_Tracks(id_collection, id_track) values (2, 2);
Insert into Collection_Tracks(id_collection, id_track) values (2, 7);
Insert into Collection_Tracks(id_collection, id_track) values (2, 8);
Insert into Collection_Tracks(id_collection, id_track) values (2, 4);
Insert into Collection_Tracks(id_collection, id_track) values (3, 11);
Insert into Collection_Tracks(id_collection, id_track) values (3, 8);
Insert into Collection_Tracks(id_collection, id_track) values (3, 3);
Insert into Collection_Tracks(id_collection, id_track) values (3, 9);
Insert into Collection_Tracks(id_collection, id_track) values (4, 11);
Insert into Collection_Tracks(id_collection, id_track) values (4, 6);
Insert into Collection_Tracks(id_collection, id_track) values (4, 7);
Insert into Collection_Tracks(id_collection, id_track) values (4, 5);
Insert into Collection_Tracks(id_collection, id_track) values (5, 8);
Insert into Collection_Tracks(id_collection, id_track) values (5, 5);
Insert into Collection_Tracks(id_collection, id_track) values (5, 9);
Insert into Collection_Tracks(id_collection, id_track) values (6, 10);
Insert into Collection_Tracks(id_collection, id_track) values (6, 12);
Insert into Collection_Tracks(id_collection, id_track) values (6, 1);
Insert into Collection_Tracks(id_collection, id_track) values (6, 11);
Insert into Collection_Tracks(id_collection, id_track) values (7, 12);
Insert into Collection_Tracks(id_collection, id_track) values (7, 4);
Insert into Collection_Tracks(id_collection, id_track) values (7, 3);
Insert into Collection_Tracks(id_collection, id_track) values (7, 5);