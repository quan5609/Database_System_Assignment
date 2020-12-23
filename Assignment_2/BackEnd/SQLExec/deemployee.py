class StoredProcedure():
    def __init__(self):
        # self.hello = 'EXEC employee_hello'
        self.updateSubject = 'EXEC UpdateSubject ?,?,?'
        self.updateTeacherOfClass = 'EXEC UpdateTeacherOfClass ?,?,?,?,?'
        self.subjectOnSemester = 'EXEC SubjectOnSemester ?,?'
        self.teacherOnSemester = 'EXEC TeacherOnSemester ?,?'
        self.classOfTeacher = 'EXEC ClassOfTeacher ?,?'
        self.teacherOfClass = 'EXEC TeacherOfClass ?,?'
		self.bookOfSubject = 'EXEC UpdateSubject ?,?'
        self.studentOfClass = 'EXEC UpdateTeacherOfClass ?,?'
        self.numStudentOfSemester = 'EXEC NumStudentOfSemester ?,?'
        self.numClassOfSemester = 'EXEC TeacherOnSemester ?,?'
        self.subjectHavingMaxTeacher = 'EXEC ClassOfTeacher ?,?'
        self.avgNumStudent = 'EXEC TeacherOfClass ?'






"""
CREATE PROCEDURE UpdateSubject(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10),
	@subjectId AS VARCHAR(10)
)

CREATE PROCEDURE UpdateTeacherOfClass(
	@teacherSsn AS varchar(10),
	@classId AS VARCHAR(10),
	@subjectId AS VARCHAR(10),
	@semesterId AS VARCHAR(10),
	@weekId AS VARCHAR(10)
)

CREATE PROCEDURE SubjectOnSemester(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE TeacherOnSemester(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE ClassOfTeacher(
	@teacherSsn AS VARCHAR(10),
	@semesterId AS varchar(10)
)

CREATE PROCEDURE TeacherOfClass(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)
->
CREATE PROCEDURE BookOfSubject(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE StudentOfClass(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE NumStudentOfSemester(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE NumClassOfSemester(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE SubjectHavingMaxTeacher(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10)
)

CREATE PROCEDURE AvgNumStudent(
	@subjectId AS VARCHAR(10)
)
"""