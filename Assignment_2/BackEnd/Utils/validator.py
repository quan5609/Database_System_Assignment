from cerberus import Validator


def validate_request(req_data, token, route_role, user_info, schema, required_data=True, check_role=True):
    '''Bad request'''
    if required_data:
        if req_data is None or not Validator(schema).validate(req_data):
            print('Wrong Schema')
            return False

    '''Invalid Token'''
    if isinstance(user_info, str):
        print('Invalid Token')
        return False

    '''Invalid Role'''
    if user_info['role'] != route_role and check_role:
        print('Wrong Role')
        return False

    return True


def validate_request_public(req_data, schema):
    '''Bad request'''
    if req_data is None or not Validator(schema).validate(req_data):
        return False
    return True
