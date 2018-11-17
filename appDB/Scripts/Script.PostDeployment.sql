/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
DECLARE @ArtID INT = 0;
INSERT INTO [courses].[Colleges]
	([Name]) VALUES	('College of Arts and Sciences');
SET @ArtID = SCOPE_IDENTITY;

DECLARE @EngID INT = 0;
INSERT INTO [courses].[Colleges]
	([Name]) VALUES	('College of Engineering');  
SET @EngID = SCOPE_IDENTITY;

INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Math', 'Math', @ArtID);
--====================================================
DECLARE @MATH INT = 0;		
INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Math', 'MATH', @ArtID);
SET @MATH = SCOPE_IDENTITY;

DECLARE @EECS INT = 0;		
INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Electrical Engineering and Computer Science', 'EECS', @EngID);
SET @EECS = SCOPE_IDENTITY;

DECLARE @CIVE INT = 0;
INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Civil Engineering', 'CIVE', @EngID);
SET @CIVE = SCOPE_IDENTITY;

DECLARE @CHEM INT = 0;
INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Chemical Engineering', 'CHEM', @EngID);
SET @CHEM = SCOPE_IDENTITY;

DECLARE @MIME INT = 0;
INSERT INTO [courses].[Disciplines]
	([Name], [Abbreviation], [CollegeId])
	VALUES ('Mechanical and Industrial Engineering', 'MIME', @EngID);
SET @MIME = SCOPE_IDENTITY;
--====================================================

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Single Variable Calculus I'
		,'1850'
		,4
		,1
		,1
		,0
		,'Calculus I'
		,@MATH
	);

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Single Variable Calculus II'
		,'1860'
		,4
		,1
		,1
		,0
		,'Calculus II'
		,@MATH
	);

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Elementary Multivariable Calculus'
		,'2840'
		,4
		,1
		,1
		,0
		,'Calculus III'
		,@MATH
	);

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Numerical Methods and Linear Algebra'
		,'2890'
		,3
		,1
		,1
		,0
		,'Linear Algebra'
		,@MATH
	);

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Differential Equations'
		,'2860'
		,3
		,1
		,1
		,0
		,'Pain and misery'
		,@MATH
	);

INSERT INTO [courses].[Courses]
    ([Name], [Number], [CreditHours], [OfferedFallSemester], [OfferedSpringSemeter], [OfferedSummerSemester], [Description], [DisciplineId])
	VALUES
	(
		'Intro to Object Oriented Programming'
		,'1510'
		,3
		,1
		,1
		,0
		,'Basics on Object-Oriented design, languages, and implementation.'
		,@EECS
	);