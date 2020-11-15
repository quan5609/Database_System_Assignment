IF db_id('Class_Registration') IS NULL 
    CREATE DATABASE Class_Registration

GO


/*Create Education Agency*/
CREATE TABLE Class_Registration.dbo.EducationAgency(
	phone varchar(10),
	departmentLocation varchar(10),
	email varchar(50),
);

/*Create Study Office*/
CREATE TABLE Class_Registration.dbo.StudyOffice(
	ssn varchar(10),
);

/*Create Department*/
CREATE TABLE Class_Registration.dbo.Department(
	ssn varchar(10),
	name varchar(50),
);

/*CREATE Study Office Employee*/

/*Create Department Employee*/

/*Create Employee*/
CREATE TABLE Class_Registration.dbo.Employee(
	phone varchar(10),
	email varchar(50),
	firstName varchar(50),
	lastName varchar(50),
	ssn varchar(10) PRIMARY KEY
);

/*Create Teacher*/
CREATE TABLE Class_Registration.dbo.Teacher(
	studyDegree varchar(50),
);

/*Create MainTeacher*/

/*Create Student*/
CREATE TABLE Class_Registration.dbo.Student(
	ssn varchar(10) PRIMARY KEY,
	firstName varchar(50),
	lastName varchar(50),
	studyStatus bit,
);

/*Create Semester*/
CREATE TABLE Class_Registration.dbo.Semester(
	id varchar(10) PRIMARY KEY,
	startDate date,
	endDate date,
);

/*Create Subject*/
CREATE TABLE Class_Registration.dbo.Subject(
	id varchar(10) PRIMARY KEY,
	name varchar(50),
	credit int,
);

/*Create ReferenceBook*/
CREATE TABLE Class_Registration.dbo.ReferenceBook(
	id varchar(10) PRIMARY KEY,
	name varchar(50),
	releasedDate date,
);

/*Create Author*/
CREATE TABLE Author(
	ssn varchar(10) PRIMARY KEY,
	firstName varchar(50),
	lastName varchar(50),
);

/*Create Publisher*/
CREATE TABLE Class_Registration.dbo.Publisher(
	id varchar(10) PRIMARY KEY,
	name varchar(50),
	nation varchar(50),
);

/*CREATE Class*/
CREATE TABLE Class_Registration.dbo.Class(
	id varchar(10),
	maxStudent int,
	Semester_id varchar(10),
	Subject_id varchar(10),
	FOREIGN KEY (Semester_id) REFERENCES  Class_Registration.dbo.Semester(id),
	FOREIGN KEY (Subject_id) REFERENCES Class_Registration.dbo.Subject(id),
	PRIMARY KEY (Semester_id, Subject_id, id)
);