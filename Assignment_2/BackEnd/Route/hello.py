import os
import json
import sys
from os import path
sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))

from flask import Blueprint, jsonify, current_app, Response, request
from sqlalchemy.sql import text
from flask_restful import Api
from RequestSchema.hello import Schema
from SQLExec.hello import StoredProcedure
from BackEnd.app import engine
from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.Utils.execute_sp import *


'''Global Variables'''
hello_blueprint = Blueprint('hello', __name__)
hello_blueprint_api = Api(hello_blueprint)
stored_procedure = StoredProcedure()
request_schema = Schema()


@hello_blueprint.route('/hello', methods=['GET'])
def hello():
    response = Response(
        response=json.dumps('OK'),
        status=200,
        mimetype='application/json'
    )
    return response


@hello_blueprint.route('/login', methods=['POST'])
def login():
    '''Define Schema'''
    schema = request_schema.login
    req_data = request.get_json()

    '''Validate Request'''
    if not validate_request_public(req_data, schema):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get Request Data'''
    username = req_data['username']
    password = req_data['password']
    role = req_data['role']

    '''Execute Stored Procedure'''
    params = [username, role]
    res = execute_sp(engine, stored_procedure.login, params)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        return Response(
            response=json.dumps('INTERNAL SERVER ERROR'),
            status=500,
            mimetype='application/json'
        )

    if not res['payload']:  # User does not exist
        return Response(
            response=json.dumps('User does not exist'),
            status=400,
            mimetype='application/json'
        )
    else:
        user = res['payload'][0]
        if check_password(user['password'], password):
            token = encode_auth_token(username, role).decode("utf-8")
            return Response(
                response=json.dumps({'token': token}),
                status=200,
                mimetype='application/json'
            )
        else:
            return Response(
                response=json.dumps('Wrong password'),
                status=400,
                mimetype='application/json'
            )


@hello_blueprint.route('/register', methods=['POST'])
def register():
    '''Define request schema'''
    schema = request_schema.register
    req_data = request.get_json()

    '''Validate Request'''
    if not validate_request_public(req_data, schema):
        return Response(
            response="Bad Request",
            status=400
        )

    '''Get Request Data'''
    username = req_data['username']
    password = hash_password(req_data['password'])
    role = req_data['role']

    '''Execute Stored Procedure'''
    params = [username, password, role]
    res = execute_sp(engine, stored_procedure.register,
                     params, getResult=False)

    '''IF SP FAILED'''
    if res['status'] == 'ERROR':
        print(res)
        return Response(
            response=json.dumps(res['error']),#'Registration Failed'),
            status=500,
            mimetype='application/json'
        )

    return Response(
        response=json.dumps('Your account is ready'),
        status=200,
        mimetype='application/json'
    )
