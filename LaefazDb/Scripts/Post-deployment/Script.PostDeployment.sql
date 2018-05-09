--/*
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


---- Carga Inicial

:r Data.Month.sql
:r Data.Year.sql
:r Data.MonthlyPayment.sql
:r Data.MonthYear.sql
:r Data.Team.sql
:r Data.Player.sql
:r Data.SystemUser.sql
:r Data.Payment.sql
