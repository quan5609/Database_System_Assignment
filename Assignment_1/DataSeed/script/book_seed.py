import pandas as pd
import numpy as np
import functools

nation_seed = ['Vietnam', 'America', 'UK']
publisher_num = 10
publisher_seed = []
book_rec = []

for publisher in range(publisher_num):
    publisher_id = publisher
    publisher_name = 'pub'+str(publisher)
    nation = nation_seed[np.random.randint(len(nation_seed), size=1)[0]]

    publisher_info = {'id': publisher_id,
                      'name': publisher_name, 'nation': nation}
    publisher_seed.append(publisher_info)

df = pd.DataFrame(publisher_seed)
df.to_csv('publisher.csv', index=False)

book_seed = ['Chemistry', 'Physics', 'Computer', 'Mechanic',
             'Electricity', 'Social', 'Music', 'Language']
book_num = 30

for book in range(book_num):
    book_id = book
    name = book_seed[np.random.randint(len(book_seed), size=1)[0]]
    for i in range(np.random.randint(2, size=1)[0]):
        name += ' ' + book_seed[np.random.randint(len(book_seed), size=1)[0]]

    released = str(2020 - np.random.randint(8, size=1)[0])+'/'+str(1 + np.random.randint(
        12, size=1)[0]).rjust(2, '0')+'/'+str(1 + np.random.randint(20, size=1)[0]).rjust(2, '0')
    publisher_id = publisher_seed[np.random.randint(
        len(publisher_seed), size=1)[0]]['id']
    book_info = {'id': book_id, 'name': name,
                 'date': released, 'pub_id': publisher_id}
    book_rec.append(book_info)

df = pd.DataFrame(book_rec)
df.to_csv('book.csv', index=False)
