--	/*
--Post-Deployment Script Template							
----------------------------------------------------------------------------------------
-- This file contains SQL statements that will be appended to the build script.		
-- Use SQLCMD syntax to include a file in the post-deployment script.			
-- Example:      :r .\myfile.sql								
-- Use SQLCMD syntax to reference a variable in the post-deployment script.		
-- Example:      :setvar TableName MyTable							
--               SELECT * FROM [$(TableName)]					
----------------------------------------------------------------------------------------
--*/

IF NOT EXISTS (SELECT * FROM Player)
BEGIN
	INSERT INTO Player(Name, Nickname, Cpf, Rg, DateOfBorn, Address, Telephone, Height, Weight, IdTeamFk) VALUES ('Filipe Nogueira','Filipe','12312312334', '4444555', '28/12/1992', 'Rua 1', '34441551', '1,80', '76,5', 1);
END