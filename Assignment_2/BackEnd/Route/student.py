from flask import Blueprint, jsonify, current_app, Response
from flask_restful import Api
import os
import json


student_blueprint = Blueprint('student', __name__)
student_blueprint_api = Api(student_blueprint)

'''Student Hello Endpoint'''


@student_blueprint.route('/hello')
def hello():
    secret = os.environ.get('SECRET_KEY')
    response = Response(
        response=json.dumps(secret),
        status=200,
        mimetype='application/json'
    )
    return response
