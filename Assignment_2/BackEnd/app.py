import json
import os
import pyodbc
import sqlalchemy as sal
import pandas as pd

from sqlalchemy import create_engine
from flask import Flask, request
from flask_cors import CORS, cross_origin

'''Import Routes'''
from Route.hello import hello_blueprint
from Route.student import student_blueprint
from Route.employee import employee_blueprint

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

'''DB Connection'''
connection_string = os.environ.get('SQLALCHEMY_DATABASE_URI')
engine = sal.create_engine(connection_string)

'''Import Routes'''
app.register_blueprint(hello_blueprint, url_prefix="")
app.register_blueprint(student_blueprint, url_prefix="/student")
app.register_blueprint(employee_blueprint, url_prefix="/employee")
