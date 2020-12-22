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