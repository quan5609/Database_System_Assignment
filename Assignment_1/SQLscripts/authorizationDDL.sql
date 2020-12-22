USE Class_Registration
GO

CREATE TABLE StudentAccount(
	ssn varchar(10) PRIMARY KEY,
	[password] varchar(MAX) NOT NULL
);

CREATE TABLE EmployeeAccount(
	ssn varchar(10) PRIMARY KEY,
	[password] varchar(MAX) NOT NULL
);

-- INSERT INTO StudentAccount VALUES ('1600002', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')
-- INSERT INTO EmployeeAccount VALUES ('depar00003', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')

GO 
CREATE PROCEDURE dbo.login_account 
    @username varchar(10),
    @role varchar(10)
AS
    IF @role = 'student'
		SELECT * FROM StudentAccount WHERE ssn = @username
	ELSE
		SELECT * FROM EmployeeAccount WHERE ssn = @username 
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
		IF EXISTS (SELECT 1 FROM EmployeeAccount WHERE ssn = @username)
			RAISERROR('Existed user',16,0)
		ELSE
			IF NOT EXISTS (SELECT 1 FROM Employee WHERE ssn = @username)
				RAISERROR('Invalid username',16,0)
			ELSE
				INSERT INTO EmployeeAccount VALUES(@username, @password)
RETURN 0 

-- EXEC register_account 'depar00006', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke', 'employee'
-- EXEC register_account '1600002', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke', 'student'

-- DROP PROCEDURE register_account