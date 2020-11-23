import pandas as pd
import numpy as np

suffix_seed = ['16', '17', '18', '19', '20']
firstname_seed = ['A', 'B', 'C', 'D', 'E']
lastname_seed = ['Nguyen', 'Le', 'Bui', 'Mai', 'Phung', 'Hua', 'Tran', 'Vu']
department_num = 11

status_rate = 0.1
student_num = 100
seed = []

for suffix in suffix_seed:
    for student in range(student_num):
        student_id = suffix + \
            str(np.random.randint(10, size=1)[0]) + str(student).rjust(4, '0')
        last_name = lastname_seed[np.random.randint(
            len(lastname_seed), size=1)[0]]
        for i in range(np.random.randint(3, size=1)[0] + 1):
            last_name += ' ' + lastname_seed[np.random.randint(
                len(lastname_seed), size=1)[0]]
        first_name = firstname_seed[np.random.randint(
            len(firstname_seed), size=1)[0]]

        department = np.random.randint(11, size=1)[0]
        department = str(department + 1)
        if np.random.uniform() < status_rate:
            student_status = False
        else:
            student_status = True
        student_info = {'ssn': student_id, 'firstName': first_name,
                        'lastName': last_name, 'studyStatus': student_status, 'department': department}
        seed.append(student_info)

df = pd.DataFrame(seed)
df.to_csv('student.csv', index=False)
