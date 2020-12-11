import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.RequestSchema.employee import Schema
from BackEnd.SQLExec.employee import StoredProcedure
from BackEnd.app import engine

employee_blueprint = Blueprint('employee', __name__)
employee_blueprint_api = Api(employee_blueprint)
request_schema = Schema()
stored_procedure = StoredProcedure()
connection = engine.raw_connection()

'''Employee Hello Endpoint'''


@employee_blueprint.route('/hello', methods=['GET'])
def hello():
    '''Define Schema'''
    schema = request_schema.hello
    req_data = request.get_json()
    token = request.headers['Authorization'].split()[1]
    route_role = request.url_rule.rule.split('/')[1]
    user_info = decode_auth_token(token)
    print(user_info)

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
