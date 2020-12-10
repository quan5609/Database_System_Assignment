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


'''Global Variables'''
hello_blueprint = Blueprint('hello', __name__)
hello_blueprint_api = Api(hello_blueprint)
stored_procedure = StoredProcedure()
cursor = engine.raw_connection().cursor()
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

    '''Execute Stored Procedure'''
    username = req_data['username']
    password = req_data['password']
    role = req_data['role']

    if role == 'student':
        sql_string = text('SELECT * FROM StudentAccount WHERE ssn = :username')
    else:
        sql_string = text(
            'SELECT * FROM EmployeeAccount WHERE ssn = :username')

    user = engine.execute(sql_string, username=username).first()

    if user is None:  # User does not exist
        return Response(
            response=json.dumps('User does not exist'),
            status=400,
            mimetype='application/json'
        )
    else:
        user = dict(user)
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

    response = Response(
        response=json.dumps('OKE'),
        status=200,
        mimetype='application/json'
    )
    return response


@hello_blueprint.route('/register', methods=['POST'])
def register():
    '''Define request schema'''
    schema = request_schema.register
    req_data = request.get_json()

    '''Bad request'''
    if not Validator(schema).validate(req_data):
        return Response(
            response="Bad Request",
            status=400
        )

    result = cursor.callproc(stored_procedure.register, [
        req_data['username'], req_data['password'], req_data['role']]).fetchall()
    cursor.close()
    engine.commit()
    return Response(
        response=json.dumps(result),
        status=200,
        mimetype='application/json'
    )
