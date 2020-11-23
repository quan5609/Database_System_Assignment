USE Class_Registration

--Create student account
CREATE LOGIN student WITH PASSWORD = '1'

--Create study office employee account
CREATE LOGIN soemployee WITH PASSWORD = '1'

--Create department employee account
CREATE LOGIN deemployee WITH PASSWORD = '1'

--Create teacher account
CREATE LOGIN teacher WITH PASSWORD = '1'

--Create student user
CREATE USER student FOR LOGIN student

--Create study office employee user
CREATE USER soemployee FOR LOGIN soemployee

--Create department employee user
CREATE USER deemployee FOR LOGIN deemployee

--Create teacher user
CREATE USER teacher FOR LOGIN teacher


--students permission
GRANT ALL ON OBJECT::Register TO student
GRANT SELECT ON OBJECT::[Subject] TO student
GRANT SELECT ON OBJECT::Class TO student
GRANT SELECT ON OBJECT::Opens TO student
GRANT SELECT ON OBJECT::Responsible TO student
GRANT SELECT ON OBJECT::StudyStatus TO student
GRANT SELECT ON OBJECT::Uses TO student

--teachers permission
GRANT ALL ON OBJECT::Uses TO teacher
GRANT SELECT ON SCHEMA::dbo TO teacher
DENY SELECT ON OBJECT::Employee TO teacher

--department employee permission
GRANT ALL ON OBJECT::Opens TO deemployee
GRANT ALL ON OBJECT::Responsible TO deemployee
GRANT ALL ON OBJECT::MainResponsible TO deemployee
GRANT SELECT ON SCHEMA::dbo TO deemployee
DENY SELECT ON OBJECT::Employee TO deemployee

--study office employee permission
GRANT ALL ON OBJECT::Register TO soemployee
GRANT ALL ON OBJECT::Class TO soemployee
GRANT ALL ON OBJECT::StudyStatus TO soemployee
GRANT SELECT ON SCHEMA::dbo TO soemployee
DENY SELECT ON OBJECT::Employee TO soemployee



/*
USE Class_Registration

SELECT * FROM Employee
SELECT * FROM sys.database_principals
DROP ROLE students
DROP ROLE soemployees
DROP ROLE deemployees
DROP USER student
DROP USER soemployee
DROP USER deemployee*/