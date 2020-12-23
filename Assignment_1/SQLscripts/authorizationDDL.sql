USE Class_Registration
GO

CREATE TABLE StudentAccount(
    ssn varchar(10) PRIMARY KEY,
    [password] varchar(MAX) NOT NULL
);

CREATE TABLE DepartmentEmployeeAccount(
    ssn varchar(10) PRIMARY KEY,
    [password] varchar(MAX) NOT NULL
);

CREATE TABLE StudyOfficeEmployeeAccount(
    ssn varchar(10) PRIMARY KEY,
    [password] varchar(MAX) NOT NULL
);

CREATE TABLE TeacherAccount(
    ssn varchar(10) PRIMARY KEY,
    [password] varchar(MAX) NOT NULL
);

-- INSERT INTO DepartmentEmployeeAccount VALUES ('1600002', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')
-- INSERT INTO EmployeeAccount VALUES ('depar00003', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')

GO 
CREATE PROCEDURE dbo.login_account 
    @username varchar(10),
    @role varchar(10)
AS
    IF @role = 'student'
        SELECT * FROM StudentAccount WHERE ssn = @username
    ELSE
        IF @role = 'teacher'
            SELECT * FROM TeacherAccount WHERE ssn = @username 
        ELSE
            IF @role = 'deemployee'
                SELECT * FROM DepartmentEmployeeAccount WHERE ssn = @username
            ELSE
                -- IF @role = 'soemployee'
                SELECT * FROM StudyOfficeEmployeeAccount WHERE ssn = @username
RETURN 0 

GO
CREATE PROCEDURE dbo.register_account 
    @username varchar(10),
    @password varchar(MAX),
    @role varchar(10)
AS
    IF @role = 'student'
        IF EXISTS (SELECT 1 FROM StudentAccount WHERE ssn = @username)
            RAISERROR('Existed user',16,0)
        ELSE
            IF NOT EXISTS (SELECT 1 FROM Student WHERE ssn = @username)
                RAISERROR('Invalid username',16,0)
            ELSE
                INSERT INTO StudentAccount VALUES(@username, @password)
    
    ELSE
        IF @role = 'teacher'
            IF EXISTS (SELECT 1 FROM TeacherAccount WHERE ssn = @username)
                RAISERROR('Existed user',16,0)
            ELSE
                IF NOT EXISTS (SELECT 1 FROM Teacher WHERE ssn = @username)
                    RAISERROR('Invalid username',16,0)
                ELSE
                    INSERT INTO TeacherAccount VALUES(@username, @password)

        ELSE
            IF @role = 'deemployee'
                IF EXISTS (SELECT 1 FROM DepartmentEmployeeAccount WHERE ssn = @username)
                    RAISERROR('Existed user',16,0)
                ELSE
                    IF NOT EXISTS (SELECT 1 FROM DepartmentEmployee WHERE ssn = @username)
                        RAISERROR('Invalid username',16,0)
                    ELSE
                        INSERT INTO DepartmentEmployeeAccount VALUES(@username, @password)
            
            ELSE
                IF @role = 'soemployee'
                    IF EXISTS (SELECT 1 FROM StudyOfficeEmployeeAccount WHERE ssn = @username)
                        RAISERROR('Existed user',16,0)
                    ELSE
                        IF NOT EXISTS (SELECT 1 FROM StudyOfficeEmployee WHERE ssn = @username)
                            RAISERROR('Invalid username',16,0)
                        ELSE
                            INSERT INTO StudyOfficeEmployeeAccount VALUES(@username, @password)
RETURN 0 

-- EXEC register_account 'depar00006', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke', 'employee'
-- EXEC register_account '1600002', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke', 'student'

-- DROP PROCEDURE register_account
-- DROP PROCEDURE login_account

-- DELETE from StudentAccount
-- select * from StudentAccount