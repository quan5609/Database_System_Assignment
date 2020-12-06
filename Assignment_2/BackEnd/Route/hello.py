from flask import Blueprint, jsonify, current_app, Response
from flask_restful import Api
import os
import json


hello_blueprint = Blueprint('hello', __name__)
hello_blueprint_api = Api(hello_blueprint)


@hello_blueprint.route('/hello')
def hello():
    secret = os.environ.get('SECRET_KEY')
    response = Response(
        response=json.dumps(secret),
        status=200,
        mimetype='application/json'
    )
    return response
