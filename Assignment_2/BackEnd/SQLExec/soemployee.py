class StoredProcedure():
    def __init__(self):
        # self.hello = 'EXEC employee_hello'
        self.addRegister = 'EXEC addRegister ?,?,?,?'
        self.removeRegister = 'EXEC removeRegister ?,?,?,?'
        self.updateRegister = 'EXEC updateRegister ?,?,?,?, ?,?,?,?'
        self.registeredClass = 'EXEC registeredClass ?,?'
        self.responsibleClass = 'EXEC responsibleClass ?,?'
        self.listSubject = 'EXEC listSubject'
        self.listStudent = 'EXEC listStudent'
        self.listTeacher = 'EXEC listTeacher'
        self.listReferenceBook = 'EXEC listReferenceBook'
        self.numOfSubjects = 'EXEC numOfSubjects'
        self.numOfClasses = 'EXEC numOfClasses'
        self.numOfStudents_class_sem = 'EXEC numOfStudents_class_sem ?,?'
        self.numOfStudents_sub_sem = 'EXEC numOfStudents_sub_sem ?'
        self.numOfStudents_sub_dep = 'EXEC numOfStudents_sub_dep'

        self.getAll = 'SELECT * FROM Opens' #draft


