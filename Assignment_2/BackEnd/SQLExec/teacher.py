class StoredProcedure():
    def __init__(self):
        # self.hello = 'EXEC employee_hello'
        self.updateReferenceBook = 'EXEC UpdateReferenceBook ?,?,?,?,?'
        self.responsibleClasses = 'EXEC responsibleClasses ?,?'
        self.studentOfResopnsibleClass = 'EXEC studentOfResopnsibleClass ?,?'
        self.referenceBookOfResponsibleSubject = 'EXEC referenceBookOfResponsibleSubject ?,?'
        self.numOfStudents_ofResponsiblesClass = 'EXEC numOfStudents_ofResponsiblesClass ?,?'
        self.numOfResponsibleClass_3RecentYear = 'EXEC numOfResponsibleClass_3RecentYear ?'
        self.top5Class_mostStudent = 'EXEC top5Class_mostStudent ?'
        self.top5Semester_mostClass = 'EXEC top5Semester_mostClass ?'









"""
CREATE PROCEDURE UpdateReferenceBook(
    @teacherSsn AS varchar(10),
    @subjectId AS varchar(10),
    @bookId AS varchar(10),
    @semesterId AS varchar(10),
    @classId AS varchar(10)
    )

CREATE PROCEDURE responsibleClasses 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )

CREATE PROCEDURE studentOfResopnsibleClass 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )

CREATE PROCEDURE referenceBookOfResponsibleSubject 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )

CREATE PROCEDURE numOfStudents_ofResponsiblesClass 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )

CREATE PROCEDURE numOfResponsibleClass_3RecentYear
    (@teacherSsn AS varchar(10))

CREATE PROCEDURE top5Class_mostStudent
    (@teacherSsn AS varchar(10))

CREATE PROCEDURE top5Semester_mostClass
    (@teacherSsn AS varchar(10))
"""