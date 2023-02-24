CREATE DATABASE WorldCities;
GO

USE WorldCities;
GO

CREATE TABLE Countries (
    Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name nchar(50) NOT NULL,
    Iso2 char(2) NOT NULL,
    Iso3 char(3) NOT NULL
);

CREATE TABLE Cities (
    /* Figure out how to configure Id as primary key AFTER you accidentally created the table */
    Id int NOT NULL,
    Name nchar(50) NOT NULL,
    Latitude decimal(18,4) NOT NULL,
    Longitude decimal(18,4) NOT NULL,
    CountryId int NOT NULL

    CONSTRAINT FK_Cities_Countries FOREIGN KEY (CountryId)     
    REFERENCES dbo.Countries (Id)     
    ON DELETE NO ACTION    
    ON UPDATE NO ACTION 
);

GO