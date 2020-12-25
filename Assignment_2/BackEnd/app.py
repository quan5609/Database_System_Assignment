import json
import os
import pyodbc
import sqlalchemy as sal
import pandas as pd

from sqlalchemy import create_engine
from flask import Flask, request
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.debug = True

'''DB Connection'''
connection_string = os.environ.get('SQLALCHEMY_DATABASE_URI')
engine = sal.create_engine(connection_string)

'''Import Routes'''
from BackEnd.Route.deemployee import deemployee_blueprint
from BackEnd.Route.soemployee import soemployee_blueprint
from BackEnd.Route.teacher import teacher_blueprint
from BackEnd.Route.student import student_blueprint
from BackEnd.Route.hello import hello_blueprint

'''Import Routes'''
app.register_blueprint(hello_blueprint, url_prefix="")
app.register_blueprint(student_blueprint, url_prefix="/student")
app.register_blueprint(deemployee_blueprint, url_prefix="/deemployee")
app.register_blueprint(soemployee_blueprint, url_prefix="/soemployee")
app.register_blueprint(teacher_blueprint, url_prefix="/teacher")
