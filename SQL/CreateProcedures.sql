-- Ophalen liedjes
CREATE PROCEDURE spSelectAllTitles
	AS
	SELECT track_name as track
	FROM dbo.Track
GO

--Artiesten ophalen 
CREATE PROCEDURE spSelectAllArtists
	AS
	SELECT artist_name as artist
	FROM dbo.Artist
GO

--Lijst van een jaar ophalen	
CREATE PROCEDURE spSelectListingOnYear @year DATE
	AS
	SELECT Track.track_name
	FROM Track
	LEFT JOIN Rank ON Track.trackID = Rank.Track_trackID

	where Rank.year = @year;
GO

--Lijst met aantal liedjes per artiest
CREATE PROCEDURE spNumberOfSongsOfArtist @name VARCHAR(75)
	AS
	SELECT Track.track_name as Track, artist_name as Artist
	FROM Track
	LEFT JOIN Artist ON Track.Artist_artistID = Artist.artistID

	where Artist.artist_name = 'queen';
GO

--Zoek artiest op naam
CREATE PROCEDURE spNumberOfSongsOfArtist @name VARCHAR(75)
	AS
	SELECT artist_name as Artist
	FROM Artist

	where Artist.artist_name LIKE '%' + @name + '%'
GO

--Toon top10 uit een bepaald jaar

CREATE PROCEDURE spSelectListingOnYear @year DATE
	AS
	SELECT TOP 10 Track.track_name
	FROM Track
	LEFT JOIN Rank ON Track.trackID = Rank.Track_trackID

	where Rank.year = @year
GO
