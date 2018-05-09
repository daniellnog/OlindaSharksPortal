﻿CREATE TABLE [dbo].[Player]
(
	[IdPlayer] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NOT NULL, 
	[Nickname] VARCHAR(100) NOT NULL, 
	[Cpf] VARCHAR(100) NOT NULL, 
	[Rg] VARCHAR(100) NOT NULL, 
	[DateOfBorn] VARCHAR(100) NOT NULL, 
    [Address] VARCHAR(100) NOT NULL, 
	[Telephone] VARCHAR(50) NOT NULL, 
	[ProfileFacebook] VARCHAR(100) NULL, 
	[ProfileInstagram] VARCHAR(100) NULL, 
    [Height] VARCHAR(MAX) NOT NULL ,
    [Weight] VARCHAR(MAX) NOT NULL, 
	[IdTeamFK] INT NOT NULL,
    CONSTRAINT [IdTeamFK] FOREIGN KEY ([IdTeamFK]) REFERENCES [Team]([IdTeam]) 
)
