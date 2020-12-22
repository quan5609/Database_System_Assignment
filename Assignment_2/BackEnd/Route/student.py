import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional

from BackEnd.Utils.auth import *
from BackEnd.Utils.validator import *
from BackEnd.RequestSchema.student import Schema


student_blueprint = Blueprint('student', __name__)
student_blueprint_api = Api(student_blueprint)
request_schema = Schema()
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

@student_blueprint.route('/subjects-and-books')
def subjects_and_books():
    '''Define Schema'''
    schema = request_schema.subjects_and_books
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
