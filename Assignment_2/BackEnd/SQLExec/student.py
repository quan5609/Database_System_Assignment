class StoredProcedure():
    def __init__(self):
        self.hello = 'EXEC employee_hello'
        self.registerSubject = 'EXEC RegisterSubject ?,?,?,?'
        self.subjectClassTeacher = 'EXEC SubjectClassTeacher ?'
        self.subjectReferenceBook = 'EXEC SubjectReferenceBook ?,?'
        self.classOfSubject = 'EXEC ClassOfSubject ?,?'
        self.classOfSubjectMoreThan1Teacher = 'EXEC ClassOfSubjectMoreThan1Teacher ?,?'
        self.sumCredit = 'EXEC SumCredit ?,?'
        self.sumSubject = 'EXEC SumSubject ?,?'
        self.first3MaxCredit = 'EXEC First3MaxCredit ?'

        self.getAllStudent = 'SELECT * FROM STUDENT' #draft

"""
CREATE PROCEDURE RegisterSubject(
    @studentId AS VARCHAR(10), 
    @classId AS VARCHAR(10),
    @semesterId AS VARCHAR(10),
    @subjectId AS VARCHAR(10)
)

CREATE PROCEDURE SubjectClassTeacher(
    @studentId AS varchar(10)
)

CREATE PROCEDURE SubjectReferenceBook(
    @studentId AS varchar(10),
    @semesterId AS VARCHAR(10)
)

CREATE PROCEDURE ClassOfSubject(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)

CREATE PROCEDURE ClassOfSubjectMoreThan1Teacher(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)

CREATE PROCEDURE SumCredit(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)

CREATE PROCEDURE SumSubject(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)

CREATE PROCEDURE First3MaxCredit(
    @studentId AS VARCHAR(10)
)

"""