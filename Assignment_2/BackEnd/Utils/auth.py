import jwt
import datetime
import os
from flask_bcrypt import Bcrypt
bcrypt = Bcrypt()


def encode_auth_token(user_id, role):
    """
    Generates the Auth Token
    :return: string
    """
    try:
        payload = {
            'exp': datetime.datetime.utcnow() + datetime.timedelta(days=0, seconds=600),
            'iat': datetime.datetime.utcnow(),
            'sub': user_id,
            'role': role
        }
        return jwt.encode(
            payload,
            os.environ.get('SECRET_KEY'),
            algorithm='HS256'
        )
    except Exception as e:
        return e


def decode_auth_token(auth_token):
    """
    Decodes the auth token
    :param auth_token:
    :return: integer|string
    """
    try:
        payload = jwt.decode(auth_token, os.environ.get(
            'SECRET_KEY'), algorithms='HS256', hearder=True)
        return payload
    except jwt.ExpiredSignatureError:
        return 'Signature expired. Please log in again.'
    except jwt.InvalidTokenError:
        return 'Invalid token. Please log in again.'


def hash_password(pwd):
    return bcrypt.generate_password_hash(
        pwd, int(os.environ.get('BCRYPT_LOG_ROUNDS'))
    ).decode()


def check_password(hash_pwd, pwd):
    return bcrypt.check_password_hash(hash_pwd, pwd)


if __name__ == "__main__":
    hash = hash_password('1234')
    print(hash)
    # print(bcrypt.check_password_hash(hash, '1234'))
    # print(encode_auth_token(1))
    # print(decode_auth_token('Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDc1MzA2NzAsImlhdCI6MTYwNzUzMDM3MCwic3ViIjoxfQ.myhM0pygj9YLMYeRkU7-gRP-PS65sioaf99P5Th7H1c'))
