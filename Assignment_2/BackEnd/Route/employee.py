import os
import json

from flask import Blueprint, jsonify, current_app, Response, request
from flask_restful import Api
from typing import List, Tuple, Dict, Optional
from cerberus import Validator

employee_blueprint = Blueprint('employee', __name__)
employee_blueprint_api = Api(employee_blueprint)

'''Employee Hello Endpoint'''


@employee_blueprint.route('/hello')
def hello():
    '''Define Schema'''
    schema = {'name': {'type': 'string', 'required': True}}
    req_data = request.get_json()

    '''Bad request'''
    if not Validator(schema).validate(req_data):
        return Response(
            response="Bad Request",
            status=400
        )
    response = Response(
        response=json.dumps('OK'),
        status=200,
        mimetype='application/json'
    )
    return response
