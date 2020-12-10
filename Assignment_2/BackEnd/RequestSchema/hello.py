class Schema():
    def __init__(self):
        self.login = {'username': {'type': 'string', 'required': True},
                      'password': {'type': 'string', 'required': True},
                      'role': {'type': 'string', 'required': True, 'allowed': ['student', 'employee']}}

        self.register = {'username': {'type': 'string', 'required': True},
                         'password': {'type': 'string', 'required': True},
                         'role': {'type': 'string', 'required': True, 'allowed': ['student', 'employee']}}
