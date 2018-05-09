CREATE TABLE [dbo].[MonthYear]
(
	[IdMonthYear] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdMonthFk] INT NOT NULL, 
    [IdYearFk] INT NOT NULL, 
    CONSTRAINT [IdMonthFk] FOREIGN KEY ([IdMonthFk]) REFERENCES [Month]([IdMonth]), 
    CONSTRAINT [IdYearFk] FOREIGN KEY ([IdYearFk]) REFERENCES [Year]([IdYear]) 
)
