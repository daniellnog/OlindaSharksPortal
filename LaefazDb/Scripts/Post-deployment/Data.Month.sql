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
IF NOT EXISTS (SELECT * FROM Month)
BEGIN
	INSERT INTO Month(Description) VALUES ('Janeiro');
	INSERT INTO Month(Description) VALUES ('Fevereiro');
	INSERT INTO Month(Description) VALUES ('Março');
	INSERT INTO Month(Description) VALUES ('Abril');
	INSERT INTO Month(Description) VALUES ('Maio');
	INSERT INTO Month(Description) VALUES ('Junho');
	INSERT INTO Month(Description) VALUES ('Julho');
	INSERT INTO Month(Description) VALUES ('Agosto');
	INSERT INTO Month(Description) VALUES ('Setembro');
	INSERT INTO Month(Description) VALUES ('Outubro');
	INSERT INTO Month(Description) VALUES ('Novembro');
	INSERT INTO Month(Description) VALUES ('Dezembro');

END