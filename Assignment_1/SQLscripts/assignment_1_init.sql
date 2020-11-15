IF db_id('Class_Registration') IS NULL 
    CREATE DATABASE Class_Registration

GO

/*Create Education Agency*/
CREATE TABLE Class_Registration.dbo.EducationAgency(
	phone varchar(10),
	departmentLocation varchar(10),
	email varchar(50),
	id varchar(10) PRIMARY KEY
);

/*Create Study Office*/
CREATE TABLE Class_Registration.dbo.StudyOffice(
	id varchar(10) PRIMARY KEY,
	eaId varchar(10),
	FOREIGN KEY (eaId) REFERENCES Class_Registration.dbo.EducationAgency(id)
);

/*Create Department*/
CREATE TABLE Class_Registration.dbo.Department(
	id varchar(10) PRIMARY KEY,
	name varchar(50),
	eaId varchar(10),
	FOREIGN KEY (eaId) REFERENCES Class_Registration.dbo.EducationAgency(id)
);

/*Create Employee*/
CREATE TABLE Class_Registration.dbo.Employee(
	phone varchar(10),
	email varchar(50),
	firstName varchar(50),
	lastName varchar(50),
	ssn varchar(10) PRIMARY KEY
);

/*CREATE Study Office Employee*/
CREATE TABLE Class_Registration.dbo.StudyOfficeEmployee(
	soId varchar(10) UNIQUE NOT NULL,
	ssn varchar(10) PRIMARY KEY,
	FOREIGN KEY (soId) REFERENCES Class_Registration.dbo.StudyOffice(id),
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn),
);

/*Create Department Employee*/
CREATE TABLE Class_Registration.dbo.DepartmentEmployee(
	dId varchar(10) UNIQUE NOT NULL,
	ssn varchar(10) PRIMARY KEY,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id),
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn),
);


/*Create Teacher*/
CREATE TABLE Class_Registration.dbo.Teacher(
	studyDegree varchar(50),
	dId varchar(10) UNIQUE NOT NULL,
	ssn varchar(10) PRIMARY KEY,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id),
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn)
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

ALTER TABLE Class_Registration.dbo.Student
ADD 
	dId varchar(10) NOT NULL,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id);
