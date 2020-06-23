-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-06-18 13:59:12 CEST
--   site:      SQL Server 2012
--   type:      SQL Server 2012



CREATE DATABASE Top2000 
GO 

USE Top2000
GO 

CREATE TABLE Artist 
    (
     artistID INTEGER NOT NULL IDENTITY(1,1) , 
     name VARCHAR (75) NOT NULL 
    )
GO

ALTER TABLE Artist ADD CONSTRAINT Artist_PK PRIMARY KEY CLUSTERED (artistID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

USE Top2000
GO 

CREATE TABLE List 
    (
     listID INTEGER NOT NULL IDENTITY(1,1) , 
     Track_trackID INTEGER NOT NULL , 
     trackID INTEGER NOT NULL 
    )
GO

ALTER TABLE List ADD CONSTRAINT List_PK PRIMARY KEY CLUSTERED (listID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

USE Top2000
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

USE Top2000
GO 

CREATE TABLE Rol 
    (
     rolID INTEGER NOT NULL IDENTITY(1,1) , 
     name VARCHAR (20) NOT NULL , 
     Users_user_ID INTEGER NOT NULL 
    )
GO

ALTER TABLE Rol ADD CONSTRAINT Rol_PK PRIMARY KEY CLUSTERED (rolID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO
ALTER TABLE Rol ADD CONSTRAINT Rol_Users_user_ID_UN UNIQUE NONCLUSTERED (Users_user_ID)
GO

USE Top2000
GO 

CREATE TABLE Track 
    (
     trackID INTEGER NOT NULL IDENTITY(1,1) , 
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

USE Top2000
GO 

CREATE TABLE Users 
    (
     user_ID INTEGER NOT NULL IDENTITY(1,1) , 
     name VARCHAR (50) NOT NULL , 
     email VARCHAR (50) NOT NULL , 
     userID INTEGER 
    )
GO

ALTER TABLE Users ADD CONSTRAINT Users_PK PRIMARY KEY CLUSTERED (user_ID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

USE Top2000
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

USE Top2000
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

USE Top2000
GO 

ALTER TABLE Rol 
    ADD CONSTRAINT Rol_Users_FK FOREIGN KEY 
    ( 
     Users_user_ID
    ) 
    REFERENCES Users 
    ( 
     user_ID 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

USE Top2000
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


