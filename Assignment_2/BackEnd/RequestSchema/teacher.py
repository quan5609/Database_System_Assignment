class Schema():
    def __init__(self):
        self.hello = {}
        self.addReferenceBook = {
            'token': {'type':'string','required':True},
            'subjectId': {'type':'string','required':True},
            'bookId': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True},
            'classId': {'type':'string','required':True}
        }

        self.removeReferenceBook = {
            'token': {'type':'string','required':True},
            'subjectId': {'type':'string','required':True},
            'bookId': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True},
            'classId': {'type':'string','required':True}
        }

        self.updateReferenceBook = {
            'token': {'type':'string','required':True},
            'subjectId': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True},
            'classId': {'type':'string','required':True},
            'oldBookId': {'type':'string','required':True},
            'newBookId': {'type':'string','required':True}
        }

        self.responsibleClasses = {
            'token': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True}
        }


        self.studentOfResopnsibleClass = {
            'token': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True}
        }

        self.referenceBookOfResponsibleSubject = {
            'token': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True}
        }

        self.numOfStudents_ofResponsiblesClass = {
            'token': {'type':'string','required':True},
            'semesterId': {'type':'string','required':True}
        }

        self.numOfResponsibleClass_3RecentYear = {
            'token': {'type':'string','required':True},
        }

        self.top5Class_mostStudent = {
            'token': {'type':'string','required':True},
        }

        self.top5Semester_mostClass = {
            'token': {'type':'string','required':True},
        }

