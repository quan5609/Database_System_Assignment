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

# iv4: Xem danh sach lop hoc cua moi mon hoc ma minh dang ky o mot hoc ky.  
# PROCEDURE ClassOfSubject(
#     @studentId AS VARCHAR(10),
#     @semesterId AS VARCHAR(10)

@student_blueprint.route('/class-of-subject',methods = ['POST'])
def classOfSubject():
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
    studentId = user_info['sub']
    semesterId = req_data['semester']

    '''Execute Stored Procedure'''
    params = [studentId,semesterId]
    res = execute_sp(engine,stored_procedure.classOfSubject,params)
    print(res)

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

@student_blueprint.route('/get-all',methods = ['POST'])
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
    res = execute_sp(engine,stored_procedure.getAllStudent,params)
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


