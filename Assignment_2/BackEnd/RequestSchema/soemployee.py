class Schema():
    def __init__(self):
        self.hello = {}
        self.addRegister = {
            'token': {'type': 'string', 'required': True},
            'newStudentId': {'type': 'string', 'required': True},
            'newClassId': {'type': 'string', 'required': True},
            'newSemesterId': {'type': 'string', 'required': True},
            'newSubjectId': {'type': 'string', 'required': True}
        }

        self.removeRegister = {
            'token': {'type': 'string', 'required': True},
            'oldStudentId': {'type': 'string', 'required': True},
            'oldClassId': {'type': 'string', 'required': True},
            'oldSemesterId': {'type': 'string', 'required': True},
            'oldSubjectId': {'type': 'string', 'required': True}
        }

        self.updateRegister = {
            'token': {'type': 'string', 'required': True},
            'oldStudentId': {'type': 'string', 'required': True},
            'oldClassId': {'type': 'string', 'required': True},
            'oldSemesterId': {'type': 'string', 'required': True},
            'oldSubjectId': {'type': 'string', 'required': True},
        
            'newStudentId': {'type': 'string', 'required': True},
            'newClassId': {'type': 'string', 'required': True},
            'newSemesterId': {'type': 'string', 'required': True},
            'newSubjectId': {'type': 'string', 'required': True}
        }

        self.registeredClass = {
            'token': {'type': 'string', 'required': True},
            'studentId': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.responsibleClass = {
            'token': {'type': 'string', 'required': True},
            'teacherSsn': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
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

        self.numOfSubjects = {
            'token': {'type': 'string', 'required': True},
        }

        self.numOfClasses = {
            'token': {'type': 'string', 'required': True},
        }

        self.numOfStudents_class_sem = {
            'token': {'type': 'string', 'required': True},
            'subject_id': {'type':'string','required': True},
            'semester_id': {'type':'string','required': True}
        }

        self.numOfStudents_sub_sem = {
            'token': {'type': 'string', 'required': True},
            'semester_id': {'type':'string','required': True}
        }

        self.numOfStudents_sub_dep = {
            'token': {'type': 'string', 'required': True},
        }

        self.getAll = {
            'token': {'type': 'string', 'required': True},
        }
