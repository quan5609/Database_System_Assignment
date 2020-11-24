IF db_id('Class_Registration') IS NULL 
    CREATE DATABASE Class_Registration

GO

/*Create Education Agency*/
CREATE TABLE Class_Registration.dbo.EducationAgency(
	id varchar(10) PRIMARY KEY,
	phone varchar(10),
	departmentLocation varchar(10),
	email varchar(50),
);

/*Create Study Office*/
CREATE TABLE Class_Registration.dbo.StudyOffice(
	id varchar(10) PRIMARY KEY,
	FOREIGN KEY (id) REFERENCES Class_Registration.dbo.EducationAgency(id) ON DELETE CASCADE
);

/*Create Department*/
CREATE TABLE Class_Registration.dbo.Department(
	id varchar(10) PRIMARY KEY,
	[name] varchar(50),
	FOREIGN KEY (id) REFERENCES Class_Registration.dbo.EducationAgency(id) ON DELETE CASCADE
);

/*Create Employee*/
CREATE TABLE Class_Registration.dbo.Employee(
	ssn varchar(10) PRIMARY KEY,
	phone varchar(10),
	email varchar(50),
	firstName varchar(50),
	lastName varchar(50),
);

/*CREATE Study Office Employee*/
CREATE TABLE Class_Registration.dbo.StudyOfficeEmployee(
	ssn varchar(10) PRIMARY KEY,
	soId varchar(10) NOT NULL,
	FOREIGN KEY (soId) REFERENCES Class_Registration.dbo.StudyOffice(id) ON DELETE CASCADE,
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn) ON DELETE CASCADE,
);

/*Create Department Employee*/
CREATE TABLE Class_Registration.dbo.DepartmentEmployee(
	ssn varchar(10) PRIMARY KEY,
	dId varchar(10)  NOT NULL,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id) ON DELETE CASCADE,
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn) ON DELETE CASCADE,
);


/*Create Teacher*/
CREATE TABLE Class_Registration.dbo.Teacher(
	ssn varchar(10) PRIMARY KEY,
	studyDegree varchar(50),
	dId varchar(10) NOT NULL,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id) ON DELETE CASCADE,
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Employee(ssn) ON DELETE CASCADE
);

/*Create MainTeacher*/
CREATE TABLE Class_Registration.dbo.MainTeacher(
	ssn VARCHAR(10) PRIMARY KEY,
	FOREIGN KEY (ssn) REFERENCES Class_Registration.dbo.Teacher(ssn) ON DELETE CASCADE
);

/*Create Student*/
CREATE TABLE Class_Registration.dbo.Student(
	ssn varchar(10) PRIMARY KEY,
	firstName varchar(50),
	lastName varchar(50),
);

/*Create Semester*/
CREATE TABLE Class_Registration.dbo.Semester(
	id varchar(10) PRIMARY KEY,
	startDate date,
	endDate date,
	CHECK (DATEDIFF(DAY, startDate, endDate) > 0)
);

CREATE TABLE Class_Registration.dbo.StudyStatus(
	[sid] varchar(10),
	semesterId varchar(10),
	[status] varchar(50),
	CHECK ([status] in ('normal','pause','stop')),
	FOREIGN KEY ([sid]) REFERENCES Class_Registration.dbo.Student(ssn) ON DELETE CASCADE,
	FOREIGN KEY (semesterId) REFERENCES Class_Registration.dbo.Semester(id) ON DELETE CASCADE,
	PRIMARY KEY ([sid],semesterId),
);

/*Create Subject*/
CREATE TABLE Class_Registration.dbo.[Subject](
	id varchar(10) PRIMARY KEY,
	[name] varchar(50),
	credit INT CHECK (credit >=1 AND credit <=3),
);

/*Create ReferenceBook*/
CREATE TABLE Class_Registration.dbo.ReferenceBook(
	id varchar(10) PRIMARY KEY,
	[name] varchar(50),
	releasedDate DATE CHECK(DATEDIFF(YEAR, releasedDate, GETDATE()) <= 10),
);

/*Create Author*/
CREATE TABLE Class_Registration.dbo.Author(
	ssn varchar(10) PRIMARY KEY,
	firstName varchar(50),
	lastName varchar(50),
);

/*Create Publisher*/
CREATE TABLE Class_Registration.dbo.Publisher(
	id varchar(10) PRIMARY KEY,
	[name] varchar(50),
	nation varchar(50),
);

/*CREATE Class*/
CREATE TABLE Class_Registration.dbo.Class(
	id varchar(10),
	maxStudent INT CHECK (maxStudent <= 60),
	Semester_id varchar(10),
	Subject_id varchar(10),
	FOREIGN KEY (Semester_id) REFERENCES  Class_Registration.dbo.Semester(id) ON DELETE CASCADE,
	FOREIGN KEY (Subject_id) REFERENCES Class_Registration.dbo.[Subject](id) ON DELETE CASCADE,
	PRIMARY KEY (Semester_id, Subject_id, id)
);

ALTER TABLE Class_Registration.dbo.Student
ADD 
	dId varchar(10) NOT NULL,
	FOREIGN KEY (dId) REFERENCES Class_Registration.dbo.Department(id) ON DELETE CASCADE;

--Relationship: Opens
CREATE TABLE Class_Registration.dbo.Opens(
	Semester_id varchar(10),
	Subject_id varchar(10),
	Department_id varchar(10),
	FOREIGN KEY (Semester_id) REFERENCES Class_Registration.dbo.Semester(id),
	FOREIGN KEY (Subject_id) REFERENCES Class_Registration.dbo.[Subject](id),
	FOREIGN KEY (Department_id) REFERENCES Class_Registration.dbo.Department(id),
	PRIMARY KEY (Semester_id, Subject_id)
);

--Relationship: Uses
CREATE TABLE Class_Registration.dbo.Uses(
	Semester_id varchar(10),
	Subject_id varchar(10),
	Class_id varchar(10),
	MainTeacher_ssn VARCHAR(10),
	ReferenceBook_id VARCHAR(10),
	FOREIGN KEY (MainTeacher_ssn) REFERENCES Class_Registration.dbo.MainTeacher(ssn),
	FOREIGN KEY (ReferenceBook_id) REFERENCES Class_Registration.dbo.ReferenceBook(id),
	FOREIGN KEY (Semester_id, Subject_id, Class_id) REFERENCES Class_Registration.dbo.Class(Semester_id, Subject_id, id),
	PRIMARY KEY (Semester_id, Class_id, Subject_id, ReferenceBook_id)
);

--Relatiónhship: Write
CREATE TABLE Class_Registration.dbo.Write(
	Author_ssn VARCHAR(10),
	Book_id VARCHAR(10),
	FOREIGN KEY (Author_ssn) REFERENCES Class_Registration.dbo.Author(ssn),
	FOREIGN KEY (Book_id) REFERENCES Class_Registration.dbo.ReferenceBook(id),
	PRIMARY KEY (Author_ssn, Book_id)
);

--Multi-value attribute: Field
CREATE TABLE Class_Registration.dbo.Field(
	Book_id  VARCHAR(10),
	Field VARCHAR(50),
	FOREIGN KEY (Book_id) REFERENCES Class_Registration.dbo.ReferenceBook(id),
	PRIMARY KEY (Book_id, Field)
);

--Relationship: Belong to (Reference Book <-> Publisher)
ALTER TABLE Class_Registration.dbo.ReferenceBook
ADD
	Publisher_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (Publisher_id) REFERENCES Class_Registration.dbo.Publisher(id) ON DELETE CASCADE

--Relationship: Register
CREATE TABLE Class_Registration.dbo.Register(
	Student_id VARCHAR(10),
	Class_id VARCHAR(10),
	Semester_id VARCHAR(10),
	Subject_id VARCHAR(10),
	FOREIGN KEY (Student_id) REFERENCES Class_Registration.dbo.Student(ssn),
	FOREIGN KEY (Semester_id, Subject_id, Class_id) REFERENCES Class_Registration.dbo.Class(Semester_id, Subject_id, id),
	PRIMARY KEY (Semester_id, Subject_id, Class_id, Student_id)
);

--Relationship: main responsible
CREATE TABLE Class_Registration.dbo.MainResponsible(
	Semester_id varchar(10),
	Subject_id varchar(10),
	MainTeacher_ssn varchar(10),
	FOREIGN KEY (MainTeacher_ssn) REFERENCES Class_Registration.dbo.MainTeacher(ssn),
	FOREIGN KEY (Semester_id) REFERENCES Class_Registration.dbo.Semester(id),
	FOREIGN KEY (Subject_id) REFERENCES Class_Registration.dbo.Subject(id),
	PRIMARY KEY (Semester_id, Subject_id)
);


--Weak Entity: Week
CREATE TABLE Class_Registration.dbo.[Week](
	id int,
	Semester_id varchar(10),
	startDate date,
	FOREIGN KEY (Semester_id) REFERENCES Class_Registration.dbo.Semester(id),
	PRIMARY KEY (id, Semester_id)
);

--Relationship: Responsible
CREATE TABLE Class_Registration.dbo.Responsible(
	Semester_id varchar(10),
	Subject_id varchar(10),
	Class_id varchar(10),
	Week_id int,
	Week_Semester_id varchar(10),
	CHECK(Week_Semester_id = Semester_id),
	Teacher_ssn varchar(10),
	FOREIGN KEY (Semester_id, Subject_id, Class_id) REFERENCES Class_Registration.dbo.Class(Semester_id, Subject_id, id),
	FOREIGN KEY (Week_id, Week_Semester_id) REFERENCES Class_Registration.dbo.[Week](id, Semester_id),
	FOREIGN KEY (Teacher_ssn) REFERENCES Class_Registration.dbo.Teacher(ssn),
	PRIMARY KEY (Semester_id, Subject_id, Class_id, Week_id)
);