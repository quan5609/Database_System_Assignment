class StoredProcedure():
    def __init__(self):
        # self.hello = 'EXEC employee_hello'
        self.addRegister = 'EXEC addRegister ?,?,?,?'
        self.removeRegister = 'EXEC removeRegister ?,?,?,?'
        self.updateRegister = 'EXEC updateRegister ?,?,?,?, ?,?,?,?'
        self.registeredClass = 'EXEC addRegister ?,?'
        self.reponsibleClass = 'EXEC addRegister ?,?'
        self.listClass = 'EXEC listClass ?,?'
        self.listStudent = 'EXEC listStudent'
        self.listTeacher = 'EXEC listTeacher'
        self.listReferenceBook = 'EXEC listReferenceBook ?,?'
        self.numOfSubjects = 'EXEC numOfSubjects'
        self.numOfClasses = 'EXEC numOfClasses'
        self.numOfStudents_class_sem = 'EXEC numOfStudents_class_sem'
        self.numOfStudents_sub_sem = 'EXEC numOfStudents_sub_sem'
        self.numOfStudents_sub_dep = 'EXEC numOfStudents_sub_dep'



"""
CREATE PROCEDURE addRegister(
	@newStudentId AS varchar(10),
	@newClassId AS varchar(10),
	@newSemesterId AS varchar(10),
	@newSubjectId AS varchar(10)
	)

CREATE PROCEDURE removeRegister(
	@oldStudentId AS varchar(10),
	@oldClassId AS varchar(10),
	@oldSemesterId AS varchar(10),
	@oldSubjectId AS varchar(10)
	)

CREATE PROCEDURE updateRegister(
	@oldStudentId AS varchar(10),
	@oldClassId AS varchar(10),
	@oldSemesterId AS varchar(10),
	@oldSubjectId AS varchar(10),

	@newStudentId AS varchar(10),
	@newClassId AS varchar(10),
	@newSemesterId AS varchar(10),
	@newSubjectId AS varchar(10)
	)

CREATE PROCEDURE registeredClass(
	@studentId AS varchar(10),
	@semesterId AS varchar(10)
	)

CREATE PROCEDURE reponsibleClass(
	@teacherSsn AS varchar(10),
	@semesterId AS varchar(10)
)

CREATE PROCEDURE listClass(
	@departmentId AS varchar(10),
	@semesterId AS varchar(10)
)

CREATE PROCEDURE listStudent

CREATE PROCEDURE listTeacher

CREATE PROCEDURE listReferenceBook(
	@semesterId AS varchar(10),
	@subjectId AS varchar(10)
)

CREATE PROCEDURE numOfSubjects

CREATE PROCEDURE numOfClasses

CREATE PROCEDURE numOfStudents_class_sem

CREATE PROCEDURE numOfStudents_sub_sem

CREATE PROCEDURE numOfStudents_sub_dep
"""