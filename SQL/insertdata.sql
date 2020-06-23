
-- create artist top 12 (2018 and 2019)
INSERT INTO Artist(artist_name) VALUES('Queen');
INSERT INTO Artist(artist_name) VALUES('Eagles');
INSERT INTO Artist(artist_name) VALUES('Billy Joel');
INSERT INTO Artist(artist_name) VALUES('Danny Vera');
INSERT INTO Artist(artist_name) VALUES('Led Zeppelin');
INSERT INTO Artist(artist_name) VALUES('Boudewijn de Groot');
INSERT INTO Artist(artist_name) VALUES('Pearl Jam');
INSERT INTO Artist(artist_name) VALUES('Coldplay');
INSERT INTO Artist(artist_name) VALUES('Normaal');
INSERT INTO Artist(artist_name) VALUES('Pink Floyd');
INSERT INTO Artist(artist_name) VALUES('Toto');
INSERT INTO Artist(artist_name) VALUES('Deep Purple');
INSERT INTO Artist(artist_name) VALUES('Guns N Roses');

-- create tracks from 2018 2019 top 12
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Bohemian Rhapsody', '1975', 1);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Hotel California', '1977', 2);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Piano Man', '1974', 3);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Roller Coaster', '2019', 4);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Stairway To Heaven', '1971', 5);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Avond', '1997', 6);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Black', '1992', 7);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Fix You', '2005', 8);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('De Boer Dat Is De Keerl', '1993', 9);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Wish You Were Here', '1975', 10);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Africa', '1982', 11);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Child In Time', '1970', 12);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('November Rain', '1992', 13);
INSERT INTO Track(track_name, release, Artist_artistID) VALUES('Love Of My Life', '1975', 1);


-- 2018 ranks
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(1, '2018', 1);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(2, '2018', 2);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(3, '2018', 3);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(4, '2018', 5);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(5, '2018', 10);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(6, '2018', 12);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(7, '2018', 7);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(8, '2018', 11);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(9, '2018', 8);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(10, '2018', 6);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(11, '2018', 13);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(12, '2018', 14);
-- 2019 ranks
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(1, '2019', 1);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(2, '2019', 2);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(3, '2019', 3);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(4, '2019', 4);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(5, '2019', 5);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(6, '2019', 6);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(7, '2019', 7);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(8, '2019', 8);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(9, '2019', 9);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(10, '2019', 10);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(11, '2019', 11);
INSERT INTO Rank(rankID, year, Track_trackID) VALUES(12, '2019', 12);
