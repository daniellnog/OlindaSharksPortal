CREATE TABLE [dbo].[MonthlyPayment]
(
	[IdMonthlyPayment] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Description] VARCHAR(100) NOT NULL, 
    [Value] FLOAT NOT NULL 
)
