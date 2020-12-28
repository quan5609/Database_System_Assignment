class Schema():
    def __init__(self):
        self.hello = {}
        self.addSubject = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True}
        }
        
        self.removeSubject = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True}
        }

        self.updateSubject = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'oldSubjectId': {'type': 'string', 'required': True},
            'newSubjectId': {'type': 'string', 'required': True}
        }

        self.addTeacherOfClass = {
            'token': {'type': 'string', 'required': True},
            'teacherSsn': {'type': 'string', 'required': True},
            'classId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'weekId': {'type': 'string', 'required': True}
        }

        self.removeTeacherOfClass = {
            'token': {'type': 'string', 'required': True},
            'teacherSsn': {'type': 'string', 'required': True},
            'classId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'weekId': {'type': 'string', 'required': True}
        }

        self.updateTeacherOfClass = {
            'token': {'type': 'string', 'required': True},
            'classId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'weekId': {'type': 'string', 'required': True},
            'oldTeacherSsn': {'type': 'string', 'required': True},
            'newTeacherSsn': {'type': 'string', 'required': True}
        }

        self.subjectOnSemester = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.teacherOnSemester = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.classOfTeacher = {
            'token': {'type': 'string', 'required': True},
            'teacherSsn': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.teacherOfClass = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.bookOfSubject = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.studentOfClass = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.numStudentOfSemester = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.numClassOfSemester = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.subjectHavingMaxTeacher = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
        }

        self.avgNumStudent = {
            'token': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True}
        }
        self.listSubject = {
            'token': {'type': 'string', 'required': True}
        }

        self.listStudent = {
            'token': {'type': 'string', 'required': True}
        }

        self.listTeacher = {
            'token': {'type': 'string', 'required': True}
        }

        self.listReferenceBook = {
            'token': {'type': 'string', 'required': True}
        }
