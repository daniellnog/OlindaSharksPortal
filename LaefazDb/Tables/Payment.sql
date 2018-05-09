CREATE TABLE [dbo].[Payment]
(
	[IdPayment] INT NOT NULL PRIMARY KEY IDENTITY,    
    [IdPlayerFk] INT NOT NULL, 
    [IdMonthYearFk] INT NOT NULL,
	[IdMonthlyPaymentFk] INT NOT NULL, 
	[PayDay] DATETIME NOT NULL, 
    CONSTRAINT [IdPlayerFk] FOREIGN KEY ([IdPlayerFk]) REFERENCES [Player]([IdPlayer]), 
    CONSTRAINT [IdMonthYearFk] FOREIGN KEY ([IdMonthYearFk]) REFERENCES [MonthYear]([IdMonthYear]), 
    CONSTRAINT [IdMonthlyPaymentFk] FOREIGN KEY ([IdMonthlyPaymentFk]) REFERENCES [MonthlyPayment]([IdMonthlyPayment]), 
)
