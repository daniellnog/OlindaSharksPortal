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
IF NOT EXISTS (SELECT * FROM SystemUser)
BEGIN
	INSERT INTO SystemUser(Name, Password, Login, DataInclusao, DataAtualizacao ) VALUES ('daniel','senha','daniel',GETDATE(),GETDATE());
END