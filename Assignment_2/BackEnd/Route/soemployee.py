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


@soemployee_blueprint.route('/list-class',methods = ['POST'])
def listClass():
    '''Define Schema'''
    schema = request_schema.listClass
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
    res = execute_sp(engine,stored_procedure.listClass,params)
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