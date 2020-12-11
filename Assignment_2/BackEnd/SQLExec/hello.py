class StoredProcedure():
    def __init__(self):
        self.login = 'EXEC login_account ?,?'

        self.register = 'EXEC register_account ?, ?, ?'
