CREATE DATABASE Top2000;
GO
USE Top2000;
GO

CREATE TABLE Artist 
    (
     artistID INTEGER NOT NULL IDENTITY(1,1), 
     name VARCHAR (75) NOT NULL 
    )
GO

ALTER TABLE Artist ADD CONSTRAINT Artist_PK PRIMARY KEY CLUSTERED (artistID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE List 
    (
     listID INTEGER NOT NULL IDENTITY(1,1), 
     Track_trackID INTEGER NOT NULL , 
     trackID INTEGER NOT NULL 
    )
GO

ALTER TABLE List ADD CONSTRAINT List_PK PRIMARY KEY CLUSTERED (listID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Rank 
    (
     rankID INTEGER NOT NULL , 
     year DATE NOT NULL 
    )
GO

ALTER TABLE Rank ADD CONSTRAINT Rank_PK PRIMARY KEY CLUSTERED (rankID, year)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE "rank-track" 
    (
     rank_rankID INTEGER NOT NULL , 
     Track_trackID INTEGER NOT NULL , 
     rank_year DATE NOT NULL 
    )
GO

ALTER TABLE "rank-track" ADD CONSTRAINT "rank-track_PK" PRIMARY KEY CLUSTERED (rank_rankID, Track_trackID, rank_year)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Rol 
    (
     rolID INTEGER NOT NULL IDENTITY(1,1), 
     name VARCHAR (20) NOT NULL , 
     user_user_ID INTEGER NOT NULL 
    )
GO 

    


CREATE UNIQUE NONCLUSTERED INDEX 
    rol__IDX ON Rol 
    ( 
     user_user_ID 
    ) 
GO

ALTER TABLE Rol ADD CONSTRAINT Rol_PK PRIMARY KEY CLUSTERED (rolID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Track 
    (
     trackID INTEGER NOT NULL IDENTITY(1,1), 
     name VARCHAR (50) , 
     Artist_artistID INTEGER , 
     release DATE 
    )
GO

ALTER TABLE Track ADD CONSTRAINT Track_PK PRIMARY KEY CLUSTERED (trackID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Users 
    (
     user_ID INTEGER NOT NULL IDENTITY(1,1), 
     name VARCHAR (50) NOT NULL , 
     email VARCHAR (50) NOT NULL , 
     userID INTEGER 
    )
GO

ALTER TABLE Users ADD CONSTRAINT user_PK PRIMARY KEY CLUSTERED (user_ID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE List 
    ADD CONSTRAINT List_Track_FK FOREIGN KEY 
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

ALTER TABLE "rank-track" 
    ADD CONSTRAINT "rank-track_rank_FK" FOREIGN KEY 
    ( 
     rank_rankID, 
     rank_year
    ) 
    REFERENCES Rank 
    ( 
     rankID , 
     year 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE "rank-track" 
    ADD CONSTRAINT "rank-track_Track_FK" FOREIGN KEY 
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

ALTER TABLE Rol 
    ADD CONSTRAINT Rol_User_FK FOREIGN KEY 
    ( 
     user_user_ID
    ) 
    REFERENCES Users 
    ( 
     user_ID 
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

