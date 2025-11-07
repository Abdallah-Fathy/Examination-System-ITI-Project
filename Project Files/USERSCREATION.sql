----------Abdallah Salama-----------------------   
-----------------------------------------------------
--cursor create database user from table users 
DECLARE @sql NVARCHAR(MAX);
DECLARE user_cursor CURSOR FOR
SELECT 
    'CREATE LOGIN [' + users.Name + '] WITH PASSWORD = ''' + password + ''';' +
    ' USE Examination_System; CREATE USER [' + users.Name + '] FOR LOGIN [' + users.Name + '];'
FROM users;
OPEN user_cursor;
FETCH NEXT FROM user_cursor INTO @sql;
WHILE @@FETCH_STATUS = 0
BEGIN
    EXEC sp_executesql @sql;
    FETCH NEXT FROM user_cursor INTO @sql;
END;
CLOSE user_cursor;
DEALLOCATE user_cursor;

----------------------------------------------------------
CREATE ROLE Mangers;
GO
CREATE ROLE INSTRACTOURS;
GO
CREATE ROLE STUDENTS;


---------------------------------------------------------

-- sp   create user and login to system 

 
 CREATE OR ALTER PROCEDURE sp_usersinsert
    @id INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserName NVARCHAR(100);
    DECLARE @Password NVARCHAR(100);
    DECLARE @Type NVARCHAR(50);
    DECLARE @SQL NVARCHAR(MAX);

    -- Get user data from UserInput table
    SELECT 
        @UserName = name,
        @Password = password,
        @Type = UserType
    FROM Users
    WHERE UserID = @id;

    -- Create LOGIN if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = @UserName)
    BEGIN
        SET @SQL = N'CREATE LOGIN [' + @UserName + '] WITH PASSWORD = ''' + @Password + ''';';
        EXEC sp_executesql @SQL;
    END

    -- Create USER in current database if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = @UserName)
    BEGIN
        SET @SQL = N'CREATE USER [' + @UserName + '] FOR LOGIN [' + @UserName + '];';
        EXEC sp_executesql @SQL;
    END

    -- Add to role based on type
    IF @Type = 'M'
        EXEC sp_addrolemember 'Mangers', @UserName;
    ELSE IF @Type = 'I'
        EXEC sp_addrolemember 'Instructors', @UserName;
    ELSE IF @Type = 'S'
        EXEC sp_addrolemember 'STUDENTS', @UserName;
    ELSE
        PRINT 'Unknown type. No role assigned.';
END;
GO
-----------------------------------------------------------
--triggers after insert add user and login to system 
create or alter trigger trg_userinsert
on users 
after insert 
as 
begin 
       DECLARE @LastID INT;

    -- Assuming 'ID' is identity column in inserted
     SELECT TOP 1 @LastID = UserID
     FROM inserted
     ORDER BY UserID DESC;
     exec sp_usersinsert @LastID
end ;
GO 
