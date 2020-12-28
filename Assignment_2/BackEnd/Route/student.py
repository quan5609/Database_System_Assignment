import os
import json
import sys
from os import path
sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))


from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.Utils.execute_sp import *
from BackEnd.RequestSchema.student import Schema
from BackEnd.app import engine

from SQLExec.student import StoredProcedure

student_blueprint = Blueprint('student', __name__)
student_blueprint_api = Api(student_blueprint)
request_schema = Schema()
stored_procedure = StoredProcedure()
'''Student Hello Endpoint'''


@student_blueprint.route('/hello')
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
    response = Response(
        response=json.dumps('OK'),
        status=200,
        mimetype='application/json'
    )
    return response


@student_blueprint.route('/get-all', methods=['POST'])
def getAllStudent():
    '''Define Schema'''
    schema = request_schema.classOfSubject
    req_data = request.get_json()
    token = req_data['token']
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)

    if not validate_request(req_data, token, route_role, user_info, schema, required_data=False):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get request data'''
    # studentId = user_info['sub']
    # semesterId = req_data['semester']

    '''Execute Stored Procedure'''
    # params = [studentId,semesterId]
    params = []
    res = execute_sp(engine, stored_procedure.getAllStudent, params)
    # print(res)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@student_blueprint.route('/register-subject', methods=['POST'])
def registerSubject():
    '''
    PROCEDURE RegisterSubject(
        @studentId AS VARCHAR(10), 
        @classId AS VARCHAR(10),
        @semesterId AS VARCHAR(10),
        @subjectId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.registerSubject
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
    params = [user_info['sub']] + list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.registerSubject,
                     params, getResult=False)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps(res['error']),  # ('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )


@student_blueprint.route('/subject-class-teacher', methods=['POST'])
def subjectClassTeacher():
    '''
    PROCEDURE SubjectClassTeacher(
        @studentId AS varchar(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.subjectClassTeacher
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
    params = [user_info['sub']]
    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.subjectClassTeacher, params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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


@student_blueprint.route('/subject-reference-book', methods=['POST'])
def subjectReferenceBook():
    '''
    PROCEDURE SubjectReferenceBook(
        @studentId AS varchar(10),
        @semesterId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.subjectReferenceBook
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
    params = [user_info['sub']] + list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.subjectReferenceBook, params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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


@student_blueprint.route('/class-of-subject', methods=['POST'])
def classOfSubject():
    '''
    PROCEDURE ClassOfSubject(
        @studentId AS VARCHAR(10),
        @semesterId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.classOfSubject
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
    studentId = user_info['sub']
    # semesterId = req_data['semesterId']

    '''Execute Stored Procedure'''
    # params = [studentId, semesterId]
    params = [studentId]
    res = execute_sp(engine, stored_procedure.classOfSubject, params)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:
        return Response(
            response=json.dumps({'res': []}),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res': res['payload']}),
            status=200,
            mimetype='application/json'
        )


@student_blueprint.route('/class-of-subject-more-than-1-teacher', methods=['POST'])
def classOfSubjectMoreThan1Teacher():
    '''
    PROCEDURE ClassOfSubjectMoreThan1Teacher(
        @studentId AS VARCHAR(10),
        @semesterId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.classOfSubjectMoreThan1Teacher
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
    params = [user_info['sub']] + list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(
        engine, stored_procedure.classOfSubjectMoreThan1Teacher, params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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


@student_blueprint.route('/sum-credit', methods=['POST'])
def sumCredit():
    '''
    PROCEDURE SumCredit(
        @studentId AS VARCHAR(10),
        @semesterId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.sumCredit
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
    params = [user_info['sub']] + list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.sumCredit,
                     params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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


@student_blueprint.route('/sum-subject', methods=['POST'])
def sumSubject():
    '''
    PROCEDURE SumSubject(
        @studentId AS VARCHAR(10),
        @semesterId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.sumSubject
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
    params = [user_info['sub']] + list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.sumSubject,
                     params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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


@student_blueprint.route('/first-3-max-credit', methods=['POST'])
def first3MaxCredit():
    '''
    PROCEDURE First3MaxCredit(
        @studentId AS VARCHAR(10)
    )
    '''

    '''Define Schema'''
    schema = request_schema.first3MaxCredit
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
    params = [user_info['sub']]
    '''Execute Stored Procedure'''
    res = execute_sp(engine, stored_procedure.first3MaxCredit,
                     params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),  # (res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
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
