class Schema():
    def __init__(self):
        self.hello = {}

        self.registerSubject = {
            'token': {'type': 'string', 'required': True},
            'classId': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True},
            'subjectId': {'type': 'string', 'required': True}
        }

        self.subjectClassTeacher = {
            'token': {'type': 'string', 'required': True},
            # 'semesterId': {'type': 'string', 'required': True}
        }

        self.subjectReferenceBook = {
            'token': {'type': 'string', 'required': True},
            # 'semesterId': {'type': 'string', 'required': True}
        }

        self.classOfSubject = {
            'token': {'type': 'string', 'required': True},
            # 'semesterId': {'type': 'string', 'required': True}
        }

        self.classOfSubjectMoreThan1Teacher = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.sumCredit = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.sumSubject = {
            'token': {'type': 'string', 'required': True},
            'semesterId': {'type': 'string', 'required': True}
        }

        self.first3MaxCredit = {
            'token': {'type': 'string', 'required': True},
        }
