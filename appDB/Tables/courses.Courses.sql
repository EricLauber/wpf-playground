CREATE TABLE [courses].[Courses]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Number] NVARCHAR(8) NOT NULL, 
    [CreditHours] INT NOT NULL, 
    [OfferedFallSemester] BIT NOT NULL, 
    [OfferedSpringSemeter] BIT NOT NULL, 
    [OfferedSummerSemester] BIT NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [DisciplineId] INT NULL, 
    CONSTRAINT [FK_Courses_ToDisciplines] FOREIGN KEY ([DisciplineId]) REFERENCES [courses].[Disciplines]([Id]) 
)
