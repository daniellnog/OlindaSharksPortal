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
IF NOT EXISTS (SELECT * FROM MonthlyPayment)
BEGIN
	INSERT INTO MonthlyPayment(Description, Value) VALUES ('Até o dia 5', 35.00);
	INSERT INTO MonthlyPayment(Description, Value) VALUES ('Entre o dia 5 e o dia 10', 40.00);
	INSERT INTO MonthlyPayment(Description, Value) VALUES ('Depois do dia 10', 45.00);
END