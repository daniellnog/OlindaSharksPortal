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

---- Cadastro de TDM_USUARIO
IF NOT EXISTS (SELECT * FROM Team)
BEGIN
	INSERT INTO Team(Description) VALUES ('Olinda Sharks');
	INSERT INTO Team(Description) VALUES ('Olinda Mermaid');
END