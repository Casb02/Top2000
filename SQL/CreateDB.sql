CREATE DATABASE Top2000
GO 


USE Top2000
GO 


CREATE TABLE Artist 
    (
     artistID INTEGER NOT NULL IDENTITY(1,1) , 
     artist_name VARCHAR (75) NOT NULL 
    )
GO

ALTER TABLE Artist ADD CONSTRAINT Artist_PK PRIMARY KEY CLUSTERED (artistID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Rank 
    (
     rankID INTEGER NOT NULL , 
     year DATE NOT NULL , 
     Track_trackID INTEGER NOT NULL 
    )
GO

ALTER TABLE Rank ADD CONSTRAINT Rank_PK PRIMARY KEY CLUSTERED (rankID, year)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO


CREATE TABLE Track 
    (
     trackID INTEGER NOT NULL IDENTITY(1,1) , 
     track_name VARCHAR (50) , 
     Artist_artistID INTEGER , 
     release DATE 
    )
GO

ALTER TABLE Track ADD CONSTRAINT Track_PK PRIMARY KEY CLUSTERED (trackID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Rank 
    ADD CONSTRAINT Rank_Track_FK FOREIGN KEY 
    ( 
     Track_trackID
    ) 
    REFERENCES Track 
    ( 
     trackID 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Track 
    ADD CONSTRAINT Track_Artist_FK FOREIGN KEY 
    ( 
     Artist_artistID
    ) 
    REFERENCES Artist 
    ( 
     artistID 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO
