import pandas as pd
import numpy as np
import functools

suffix_seed = ['office', 'department', 'teacher']
firstname_seed = ['A', 'B', 'C', 'D', 'E']
lastname_seed = ['Nguyen', 'Le', 'Bui', 'Mai', 'Phung', 'Hua', 'Tran', 'Vu']

status_rate = 0.1
employee_num = 20
seed = []
phone_list = []

for suffix in suffix_seed:
    for employee in range(employee_num):
        employee_id = suffix[:5] + \
            str(np.random.randint(10, size=1)[0]) + str(employee).rjust(4, '0')
        last_name = lastname_seed[np.random.randint(
            len(lastname_seed), size=1)[0]]
        for i in range(np.random.randint(3, size=1)[0] + 1):
            last_name += ' ' + lastname_seed[np.random.randint(
                len(lastname_seed), size=1)[0]]
        first_name = firstname_seed[np.random.randint(
            len(firstname_seed), size=1)[0]]

        phone_digits = np.random.randint(10, size=10)
        phone = functools.reduce(
            lambda x, y: str(x) + str(y), phone_digits, '')

        while phone in phone_list:
            phone_digits = np.random.randint(10, size=10)
            phone = functools.reduce(
                lambda x, y: str(x) + str(y), phone_digits, '')
        phone_list.append(phone)

        email = first_name.lower() + last_name.lower() + '@hcmut.edu.vn'
        email = email.replace(" ", "")
        employee_info = {'ssn': employee_id, 'firstName': first_name,
                         'lastName': last_name, 'phone': phone, 'email': email, 'role': suffix}
        seed.append(employee_info)

df = pd.DataFrame(seed)
df.to_csv('employee.csv')
