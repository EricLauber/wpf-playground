CREATE TABLE [courses].[Disciplines]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Abbreviation] NCHAR(4) NOT NULL, 
    [CollegeId] INT NOT NULL, 
    CONSTRAINT [FK_Disciplines_ToColleges] FOREIGN KEY ([CollegeId]) REFERENCES [courses].[Colleges]([Id])
)
