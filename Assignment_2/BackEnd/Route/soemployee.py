import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.Utils.execute_sp import *
from BackEnd.RequestSchema.soemployee import Schema
from BackEnd.SQLExec.soemployee import StoredProcedure
from BackEnd.app import engine

soemployee_blueprint = Blueprint('soemployee', __name__)
soemployee_blueprint_api = Api(soemployee_blueprint)
request_schema = Schema()
stored_procedure = StoredProcedure()
connection = engine.raw_connection()

'''Employee Hello Endpoint'''


@soemployee_blueprint.route('/hello', methods=['GET'])
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


@soemployee_blueprint.route('/get-all',methods = ['POST'])
def getAllStudent():
    '''Define Schema'''
    schema = request_schema.getAll
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

    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.getAll,params)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )
    
    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/add-register',methods = ['POST'])
def addRegister():
    '''PROCEDURE addRegister(
            @newStudentId AS varchar(10),
            @newClassId AS varchar(10),
            @newSemesterId AS varchar(10),
            @newSubjectId AS varchar(10)
        )'''

    '''Define Schema'''
    schema = request_schema.addRegister
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
    newStudentId,newClassId,newSemesterId,newSubjectId = list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    params = [newStudentId,newClassId,newSemesterId,newSubjectId]
    res = execute_sp(engine,stored_procedure.addRegister,params,False)
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



@soemployee_blueprint.route('/remove-register',methods = ['POST'])
def removeRegister():
    '''
    PROCEDURE removeRegister(
        @oldStudentId AS varchar(10),
        @oldClassId AS varchar(10),
        @oldSemesterId AS varchar(10),
        @oldSubjectId AS varchar(10)
        )
    '''
    
    '''Define Schema'''
    schema = request_schema.removeRegister
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
    oldStudentId,oldClassId,oldSemesterId,oldSubjectId = list(req_data.values())[1:]
    '''Execute Stored Procedure'''
    params = [oldStudentId,oldClassId,oldSemesterId,oldSubjectId]
    res = execute_sp(engine,stored_procedure.removeRegister,params,False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )

@soemployee_blueprint.route('/update-register',methods = ['POST'])
def updateRegister():
    '''
    PROCEDURE updateRegister(
        @oldStudentId AS varchar(10),
        @oldClassId AS varchar(10),
        @oldSemesterId AS varchar(10),
        @oldSubjectId AS varchar(10),

        @newStudentId AS varchar(10),
        @newClassId AS varchar(10),
        @newSemesterId AS varchar(10),
        @newSubjectId AS varchar(10)
    )
    '''
    
    '''Define Schema'''
    schema = request_schema.updateRegister
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
    res = execute_sp(engine,stored_procedure.updateRegister,params,False)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#res['error']),
            status=500,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps('OK'),
            status=200,
            mimetype='application/json'
        )

@soemployee_blueprint.route('/registered-class',methods = ['POST'])
def registeredClass():
    '''
    PROCEDURE registeredClass(
            @studentId AS varchar(10),
            @semesterId AS varchar(10)
        )
    '''
    
    '''Define Schema'''
    schema = request_schema.registeredClass
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
    res = execute_sp(engine,stored_procedure.registeredClass,params,True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#res['error']),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:
        return Response(
            response=json.dumps("Empty"),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps(res['payload']),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/responsible-class',methods = ['POST'])
def responsibleClass():
    '''
    PROCEDURE responsibleClass(
            @teacherSsn AS varchar(10),
            @semesterId AS varchar(10)
        )
    '''
    
    '''Define Schema'''
    schema = request_schema.responsibleClass
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
    res = execute_sp(engine,stored_procedure.responsibleClass,params,True)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),#res['error']),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:
        return Response(
            response=json.dumps("Empty"),
            status=200,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps(res['payload']),
            status=200,
            mimetype='application/json'
        )

@soemployee_blueprint.route('/list-subject',methods = ['POST'])
def listSubject():
    '''PROCEDURE listSubject()'''

    '''Define Schema'''
    schema = request_schema.listSubject
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.listSubject,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )
    
    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/list-student',methods = ['POST'])
def listStudent():
    '''PROCEDURE listStudent()'''

    '''Define Schema'''
    schema = request_schema.listStudent
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.listStudent,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )
    
    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/list-teacher',methods = ['POST'])
def listTeacher():
    '''PROCEDURE listTeacher()'''

    '''Define Schema'''
    schema = request_schema.listTeacher
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.listTeacher,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/list-reference-book',methods = ['POST'])
def listReferenceBook():
    '''PROCEDURE listReferenceBook()'''

    '''Define Schema'''
    schema = request_schema.listReferenceBook
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.listReferenceBook,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/num-of-subjects',methods = ['POST'])
def numOfSubjects():
    '''PROCEDURE numOfSubjects()'''

    '''Define Schema'''
    schema = request_schema.numOfSubjects
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.numOfSubjects,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/num-of-classes',methods = ['POST'])
def numOfClasses():
    '''PROCEDURE numOfClasses()'''

    '''Define Schema'''
    schema = request_schema.numOfClasses
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.numOfClasses,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/num-of-students-class-sem',methods = ['POST'])
def numOfStudents_class_sem():
    '''PROCEDURE numOfStudents_class_sem(
            @subject_id varchar(10),
            @semester_id varchar(10)
        )'''

    '''Define Schema'''
    schema = request_schema.numOfStudents_class_sem
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
    subject_id,semester_id = req_data['subject_id'],req_data['semester_id']
    '''Execute Stored Procedure'''
    params = [subject_id,semester_id]
    res = execute_sp(engine,stored_procedure.numOfStudents_class_sem,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/num-of-students-sub-sem',methods = ['POST'])
def numOfStudents_sub_sem():
    '''PROCEDURE numOfStudents_sub_sem(
            @semester_id varchar(10)
        )'''

    '''Define Schema'''
    schema = request_schema.numOfStudents_sub_sem
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
    semester_id = req_data['semester_id']
    '''Execute Stored Procedure'''
    params = [semester_id]
    res = execute_sp(engine,stored_procedure.numOfStudents_sub_sem,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


@soemployee_blueprint.route('/num-of-students-sub-dep',methods = ['POST'])
def numOfStudents_sub_dep():
    '''PROCEDURE numOfStudents_sub_dep()'''

    '''Define Schema'''
    schema = request_schema.numOfStudents_sub_dep
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
    
    '''Execute Stored Procedure'''
    params = []
    res = execute_sp(engine,stored_procedure.numOfStudents_sub_dep,params)
    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  
        return Response(
            response=json.dumps('Empty'),
            status=400,
            mimetype='application/json'
        )
    else:
        return Response(
            response=json.dumps({'res':res['payload']}),
            status=200,
            mimetype='application/json'
        )


