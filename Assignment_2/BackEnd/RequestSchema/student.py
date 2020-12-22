class Schema():
    def __init__(self):
        self.hello = {}
        
        self.classOfSubject = {'token': {'type': 'string', 'required': True},
                         'semester': {'type': 'string', 'required': True}}