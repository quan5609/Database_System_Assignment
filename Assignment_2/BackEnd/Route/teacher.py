import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.Utils.execute_sp import *
from BackEnd.RequestSchema.teacher import Schema
from BackEnd.SQLExec.teacher import StoredProcedure
from BackEnd.app import engine

teacher_blueprint = Blueprint('teacher', __name__)
teacher_blueprint_api = Api(teacher_blueprint)
request_schema = Schema()
stored_procedure = StoredProcedure()
connection = engine.raw_connection()

'''Teacher Hello Endpoint'''


@teacher_blueprint.route('/hello', methods=['GET'])
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

@teacher_blueprint.route('/update-reference-book',methods = ['POST'])
def updateReferenceBook():
    '''
    PROCEDURE UpdateReferenceBook(
        @teacherSsn AS varchar(10),
        @subjectId AS varchar(10),
        @bookId AS varchar(10),
        @semesterId AS varchar(10),
        @classId AS varchar(10)
        )
    '''

    '''Define Schema'''
    schema = request_schema.updateReferenceBook
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
    res = execute_sp(engine,stored_procedure.updateReferenceBook,params, getResult=False)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/responsible-classes',methods = ['POST'])
def responsibleClasses():
    '''
    PROCEDURE responsibleClasses 
        (@teacherSsn AS varchar(10),
        @semesterId AS varchar(10)
        )
    '''

    '''Define Schema'''
    schema = request_schema.responsibleClasses
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
    res = execute_sp(engine,stored_procedure.responsibleClasses,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/student-of-resopnsible-class',methods = ['POST'])
def studentOfResopnsibleClass():
    '''
    PROCEDURE studentOfResopnsibleClass 
        (@teacherSsn AS varchar(10),
        @semesterId AS varchar(10)
        )
    '''

    '''Define Schema'''
    schema = request_schema.studentOfResopnsibleClass
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
    res = execute_sp(engine,stored_procedure.studentOfResopnsibleClass,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/reference-book-of-responsible-subject',methods = ['POST'])
def referenceBookOfResponsibleSubject():
    '''
    PROCEDURE referenceBookOfResponsibleSubject 
        (@teacherSsn AS varchar(10),
        @semesterId AS varchar(10)
        )
    '''

    '''Define Schema'''
    schema = request_schema.referenceBookOfResponsibleSubject
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
    res = execute_sp(engine,stored_procedure.referenceBookOfResponsibleSubject,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/num-of-students-of-responsible-class',methods = ['POST'])
def numOfStudents_ofResponsiblesClass():
    '''
    PROCEDURE numOfStudents_ofResponsiblesClass 
        (@teacherSsn AS varchar(10),
        @semesterId AS varchar(10)
        )
    '''

    '''Define Schema'''
    schema = request_schema.numOfStudents_ofResponsiblesClass
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
    res = execute_sp(engine,stored_procedure.numOfStudents_ofResponsiblesClass,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/num-of-responsible-class-3-recent-year',methods = ['POST'])
def numOfResponsibleClass_3RecentYear():
    '''
    PROCEDURE numOfResponsibleClass_3RecentYear
        (@teacherSsn AS varchar(10))
    '''

    '''Define Schema'''
    schema = request_schema.numOfResponsibleClass_3RecentYear
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
    res = execute_sp(engine,stored_procedure.numOfResponsibleClass_3RecentYear,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/top-5-class-most-student',methods = ['POST'])
def top5Class_mostStudent():
    '''
    PROCEDURE top5Class_mostStudent
        (@teacherSsn AS varchar(10))

    '''

    '''Define Schema'''
    schema = request_schema.top5Class_mostStudent
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
    res = execute_sp(engine,stored_procedure.top5Class_mostStudent,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )

@teacher_blueprint.route('/top-5-semester-most-class',methods = ['POST'])
def top5Semester_mostClass():
    '''
    PROCEDURE top5Semester_mostClass
        (@teacherSsn AS varchar(10))
    '''

    '''Define Schema'''
    schema = request_schema.top5Semester_mostClass
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
    res = execute_sp(engine,stored_procedure.top5Semester_mostClass,params, getResult=True)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#(res['error'])
            status=500,
            mimetype='application/json'
        )
    elif not res['payload']:
        return Response(
            response=json.dumps('Empty'),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )