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
GRANT EXECUTE ON OBJECT::RegisterSubject TO students
GRANT EXECUTE ON OBJECT::SubjectClassTeacher TO students
GRANT EXECUTE ON OBJECT::SubjectReferenceBook TO students
GRANT EXECUTE ON OBJECT::ClassOfSubject TO students
GRANT EXECUTE ON OBJECT::ClassOfSubjectMoreThan1Teacher TO students
GRANT EXECUTE ON OBJECT::SumCredit TO students
GRANT EXECUTE ON OBJECT::SumSubject TO students
GRANT EXECUTE ON OBJECT::First3MaxCredit TO students


--teachers permission
GRANT EXECUTE ON OBJECT::UpdateReferenceBook TO teachers
GRANT EXECUTE ON OBJECT::responsibleClasses TO teachers
GRANT EXECUTE ON OBJECT::studentOfResopnsibleClass TO teachers
GRANT EXECUTE ON OBJECT::referenceBookOfResponsibleSubject TO teachers
GRANT EXECUTE ON OBJECT::numOfStudents_ofResponsiblesClass TO teachers
GRANT EXECUTE ON OBJECT::numOfResponsibleClass_3RecentYear TO teachers
GRANT EXECUTE ON OBJECT::top5Class_mostStudent TO teachers
GRANT EXECUTE ON OBJECT::top5Semester_mostClass TO teachers

--department employee permission
GRANT EXECUTE ON OBJECT::UpdateSubject TO deemployees
GRANT EXECUTE ON OBJECT::UpdateTeacherOfClass TO deemployees
GRANT EXECUTE ON OBJECT::SubjectOnSemester TO deemployees
GRANT EXECUTE ON OBJECT::TeacherOnSemester TO deemployees
GRANT EXECUTE ON OBJECT::ClassOfTeacher TO deemployees
GRANT EXECUTE ON OBJECT::TeacherOfClass TO deemployees
GRANT EXECUTE ON OBJECT::BookOfSubject TO deemployees
GRANT EXECUTE ON OBJECT::StudentOfClass TO deemployees
GRANT EXECUTE ON OBJECT::NumStudentOfSemester TO deemployees
GRANT EXECUTE ON OBJECT::NumClassOfSemester TO deemployees
GRANT EXECUTE ON OBJECT::SubjectHavingMaxTeacher TO deemployees
GRANT EXECUTE ON OBJECT::AvgNumStudent TO deemployees


--study office employee permission
GRANT EXECUTE ON OBJECT::addRegister TO soemployees
GRANT EXECUTE ON OBJECT::removeRegister TO soemployees
GRANT EXECUTE ON OBJECT::updateRegister TO soemployees
GRANT EXECUTE ON OBJECT::registeredClass TO soemployees
GRANT EXECUTE ON OBJECT::reponsibleClass TO soemployees
GRANT EXECUTE ON OBJECT::listStudent TO soemployees
GRANT EXECUTE ON OBJECT::listTeacher TO soemployees
GRANT EXECUTE ON OBJECT::listReferenceBook TO soemployees
GRANT EXECUTE ON OBJECT::numOfSubjects TO soemployees
GRANT EXECUTE ON OBJECT::numOfClasses TO soemployees
GRANT EXECUTE ON OBJECT::numOfStudents_class_sem TO soemployees
GRANT EXECUTE ON OBJECT::numOfStudents_sub_sem TO soemployees
GRANT EXECUTE ON OBJECT::numOfStudents_sub_dep TO soemployees



/*USE Class_Registration

EXECUTE * FROM Employee
EXECUTE * FROM sys.database_principals
DROP ROLE students
DROP ROLE soemployees
DROP ROLE deemployees
DROP USER student
DROP USER soemployee
DROP USER deemployee
Drop USER teacher*/