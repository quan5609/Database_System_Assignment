import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.Utils.execute_sp import *
from BackEnd.RequestSchema.deemployee import Schema
from BackEnd.SQLExec.deemployee import StoredProcedure
from BackEnd.app import engine

deemployee_blueprint = Blueprint('deemployee', __name__)
deemployee_blueprint_api = Api(deemployee_blueprint)
request_schema = Schema()
stored_procedure = StoredProcedure()
connection = engine.raw_connection()


@deemployee_blueprint.route('/hello', methods=['GET'])
def hello():
    '''Define Schema'''
    schema = request_schema.hello
    req_data = request.get_json()
    token = request.headers['Authorization'].split()[1]
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    '''Validate Request'''
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=False):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Execute Stored Procedure'''
    res = {}
    connection = engine.raw_connection()
    try:
        cursor = connection.cursor()
        cursor.execute(stored_procedure.hello)
        result = cursor.fetchall()
        cursor.close()
        connection.commit()
        res['status'] = 'OK'
    except Exception as e:
        res['status'] = 'ERROR'
        res['error'] = e
    finally:
        connection.close()

    response = Response(
        response=json.dumps('OK'),
        status=200,
        mimetype='application/json'
    )
    return response


@deemployee_blueprint.route('/add-subject', methods=['POST'])
def addSubject():
    '''
    PROCEDURE addSubject(
            @semesterId AS varchar(10),
            @subjectId AS VARCHAR(10),
            @departmentId AS varchar(10)
        )
    '''
    '''Define Schema'''
    schema = request_schema.addSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params.insert(1, did['payload'][0]['dId'])
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.addSubject, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/remove-subject', methods=['POST'])
def removeSubject():
    '''
    PROCEDURE removeSubject(
            @semesterId AS varchar(10),
            @subjectId AS VARCHAR(10),
            @departmentId AS varchar(10)
        )
    '''
    '''Define Schema'''
    schema = request_schema.removeSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params.append(did['payload'][0]['dId'])
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    print(params)
    res = execute_sp(engine, stored_procedure.removeSubject, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/update-subject', methods=['POST'])
def updateSubject():
    '''
    PROCEDURE updateSubject(
            @semesterId AS varchar(10),
            @departmentId AS varchar(10),
            @oldSubjectId AS VARCHAR(10),
            @newSubjectId AS VARCHAR(10)
        )
    '''
    '''Define Schema'''
    schema = request_schema.updateSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params.insert(1, did['payload'][0]['dId'])
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.updateSubject, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )

@deemployee_blueprint.route('/add-class', methods=['POST'])
def addClass():
    '''
    PROCEDURE addClass(
        @semesterId AS varchar(10),
        @departmentId AS VARCHAR(10),
        @subjectId AS VARCHAR(10),
        @classId AS VARCHAR(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.addClass
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine,stored_procedure.getDId,user_info['sub'],True)
    if did['payload']:
        params.insert(1,did['payload'][0]['dId'])
    else:
        return Response(
            response="Invalid Token",
            status=400
        )
    
    '''Execute Stored Procedure'''
    res = execute_sp(engine,stored_procedure.addClass,params,False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )

@deemployee_blueprint.route('/add-teacher-of-class', methods=['POST'])
def addTeacherOfClass():
    '''
    PROCEDURE addTeacherOfClass(
        @teacherSsn AS varchar(10),
        @classId AS VARCHAR(10),
        @subjectId AS VARCHAR(10),
        @semesterId AS VARCHAR(10),
        @weekId AS VARCHAR(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.addTeacherOfClass
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.addTeacherOfClass, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/remove-teacher-of-class', methods=['POST'])
def removeTeacherOfClass():
    '''
    PROCEDURE removeTeacherOfClass(
        @teacherSsn AS varchar(10),
        @classId AS VARCHAR(10),
        @subjectId AS VARCHAR(10),
        @semesterId AS VARCHAR(10),
        @weekId AS VARCHAR(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.removeTeacherOfClass
    req_data = request.get_json()
    # print(req_data)
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    # print(params)
    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.removeTeacherOfClass, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/update-teacher-of-class', methods=['POST'])
def updateTeacherOfClass():
    '''
    PROCEDURE updateTeacherOfClass(
        @classId AS VARCHAR(10),
        @subjectId AS VARCHAR(10),
        @semesterId AS VARCHAR(10),
        @weekId AS VARCHAR(10),
        @oldTeacherSsn AS varchar(10),
        @newTeacherSsn AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.updateTeacherOfClass
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.updateTeacherOfClass, params, False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/subject-on-semester', methods=['POST'])
def subjectOnSemester():
    '''
    PROCEDURE SubjectOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.subjectOnSemester
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.subjectOnSemester, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/teacher-on-semester', methods=['POST'])
def teacherOnSemester():
    '''
    PROCEDURE TeacherOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.teacherOnSemester
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.teacherOnSemester, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/class-of-teacher', methods=['POST'])
def classOfTeacher():
    '''
    PROCEDURE ClassOfTeacher(
        @teacherSsn AS VARCHAR(10),
        @semesterId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.classOfTeacher
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.classOfTeacher, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/teacher-of-class', methods=['POST'])
def teacherOfClass():
    '''
    PROCEDURE TeacherOfClass(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.teacherOfClass
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.teacherOfClass, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/book-of-subject', methods=['POST'])
def bookOfSubject():
    '''
    PROCEDURE BookOfSubject(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.bookOfSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.bookOfSubject, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/student-of-class', methods=['POST'])
def studentOfClass():
    '''
    PROCEDURE StudentOfClass(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.studentOfClass
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.studentOfClass, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/num-student-of-semester', methods=['POST'])
def numStudentOfSemester():
    '''
    PROCEDURE NumStudentOfSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.numStudentOfSemester
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.numStudentOfSemester, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/num-class-of-semester', methods=['POST'])
def numClassOfSemester():
    '''
    PROCEDURE NumClassOfSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.numClassOfSemester
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.numClassOfSemester, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/subject-having-max-teacher', methods=['POST'])
def subjectHavingMaxTeacher():
    '''
    PROCEDURE SubjectHavingMaxTeacher(
        @semesterId AS varchar(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.subjectHavingMaxTeacher
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.subjectHavingMaxTeacher, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/avg-num-student', methods=['POST'])
def avgNumStudent():
    '''
    PROCEDURE AvgNumStudent(
        @subjectId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.avgNumStudent
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.avgNumStudent, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/list-teacher', methods=['POST'])
def listTeacher():
    '''
    PROCEDURE TeacherOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.listTeacher
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.listTeacher, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/list-student', methods=['POST'])
def listStudent():
    '''
    PROCEDURE TeacherOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.listStudent
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.listStudent, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/list-subject', methods=['POST'])
def listSubject():
    '''
    PROCEDURE TeacherOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.listSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.listSubject, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@deemployee_blueprint.route('/list-reference-book', methods=['POST'])
def listReferenceBook():
    '''
    PROCEDURE TeacherOnSemester(
        @semesterId AS varchar(10),
        @departmentId AS varchar(10)
    )
    '''
    '''Define Schema'''
    schema = request_schema.listReferenceBook
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=True):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    params = list(req_data.values())[1:]
    did = execute_sp(engine, stored_procedure.getDId, user_info['sub'], True)
    if did['payload']:
        params += [did['payload'][0]['dId']]
    else:
        return Response(
            response="Invalid Token",
            status=400
        )

    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.listReferenceBook, params, True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),
            status=500,
            mimetype='application/json'
        )
    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )
