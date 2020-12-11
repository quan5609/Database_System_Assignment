def execute_sp(engine, sp, params, getResult=True):
    res = {'payload': []}
    connection = engine.raw_connection()
    try:
        cursor = connection.cursor()
        cursor.execute(sp, params)
        if getResult:
            columns = [column[0] for column in cursor.description]
            for row in cursor.fetchall():
                res['payload'].append(dict(zip(columns, row)))
        cursor.close()
        connection.commit()
        res['status'] = 'OK'
    except Exception as e:
        res['status'] = 'ERROR'
        res['error'] = e
    finally:
        connection.close()
    return res
