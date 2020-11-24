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

--Create so role
CREATE ROLE students 

--Create students role
CREATE ROLE soemployees 

--Create de role
CREATE ROLE deemployees

--Create teacher role
CREATE ROLE teachers

--Add student
ALTER ROLE  students  
	ADD MEMBER student;

--Add so
ALTER ROLE  soemployees  
	ADD MEMBER soemployee;

--Add de
ALTER ROLE  deemployees  
	ADD MEMBER deemployee;

--Add teacher
ALTER ROLE  teachers  
	ADD MEMBER teacher;  
 

--students permission
GRANT ALL ON OBJECT::Register TO students
GRANT SELECT ON OBJECT::[Subject] TO students
GRANT SELECT ON OBJECT::Class TO students
GRANT SELECT ON OBJECT::Opens TO students
GRANT SELECT ON OBJECT::Responsible TO students
GRANT SELECT ON OBJECT::StudyStatus TO students
GRANT SELECT ON OBJECT::Uses TO students
GRANT SELECT ON OBJECT::ReferenceBook TO students
GRANT SELECT ON OBJECT::Author TO students
GRANT SELECT ON OBJECT::Field TO students
GRANT SELECT ON OBJECT::Teacher TO students
GRANT SELECT ON OBJECT::MainTeacher TO students
GRANT SELECT ON OBJECT::Semester TO students


--teachers permission
GRANT ALL ON OBJECT::Uses TO teachers
GRANT SELECT ON SCHEMA::dbo TO teachers

--department employee permission
GRANT ALL ON OBJECT::Opens TO deemployees
GRANT ALL ON OBJECT::Responsible TO deemployees
GRANT ALL ON OBJECT::MainResponsible TO deemployees
GRANT SELECT ON SCHEMA::dbo TO deemployees


--study office employee permission
GRANT ALL ON OBJECT::Register TO soemployees
GRANT ALL ON OBJECT::Class TO soemployees
GRANT ALL ON OBJECT::StudyStatus TO soemployees
GRANT SELECT ON SCHEMA::dbo TO soemployees





/*USE Class_Registration

SELECT * FROM Employee
SELECT * FROM sys.database_principals
DROP ROLE students
DROP ROLE soemployees
DROP ROLE deemployees
DROP USER student
DROP USER soemployee
DROP USER deemployee
Drop USER teacher*/