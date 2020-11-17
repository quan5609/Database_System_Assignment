import pandas as pd
import numpy as np
import functools

semester_seed = ['cq', 'dt']

year_num = 3

for year in range(year_num):
    for semester in semester_seed:
        for index in range(1, 4):
        semester_id = semester + str(year)
        name = book_seed[np.random.randint(len(book_seed), size=1)[0]]
        for i in range(np.random.randint(2, size=1)[0]):
            name += ' ' + \
                book_seed[np.random.randint(len(book_seed), size=1)[0]]

        released = str(2020 - np.random.randint(8, size=1)[0])+'/'+str(1 + np.random.randint(
            12, size=1)[0]).rjust(2, '0')+'/'+str(1 + np.random.randint(20, size=1)[0]).rjust(2, '0')
        publisher_id = publisher_seed[np.random.randint(
            len(publisher_seed), size=1)[0]]['id']
        book_info = {'id': book_id, 'name': name,
                     'date': released, 'pub_id': publisher_id}
        book_rec.append(book_info)

df = pd.DataFrame(book_rec)
df.to_csv('book.csv', index=False)
