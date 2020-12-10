import React from 'react';
import { Form, Input, Button, message, Select } from 'antd';

import './index.scss';
import PropTypes from 'prop-types';
import { onLogin, onLoginSSO } from 'features/App/slice';
import { useDispatch } from 'react-redux';
import { useHistory } from 'react-router-dom';
// import { setCookie, deleteAllCookies } from 'utils/cookies';
import AuthProvider from './AuthProvider';

const layout = {
  labelCol: { span: 8 },
  wrapperCol: { span: 16 },
};
const tailLayout = {
  wrapperCol: { offset: 8, span: 16 },
};

LoginPage.propTypes = {};

function LoginPage(props) {
  const dispatch = useDispatch();
  const history = useHistory();
  const { Option } = Select;

  const {
    account,
    emailMessages,
    error,
    graphProfile,
    onSignIn,
    onSignOut,
    idToken,
    onRequestEmailToken,
  } = props;
  const onFinish = values => {
    dispatch(onLogin(values.email, values.password, values.role))
      .then(() => {
        message.success('login successfully');
        history.push('/');
      })
      .catch(error => {
        message.error(error.response.data);
      });
  };

  const onFinishSSO = () => {
    onSignIn()
      .then(response => {
        const token = response.idToken;
        // console.log('BUG');
        dispatch(onLoginSSO(token));
        message.success('login successfully');
        history.push('/');
      })
      .catch(error => {
        message.error('Please try again!-----No Token Recieved');
      });
  };

  const onFinishFailed = errorInfo => {
    console.log('Failed:', errorInfo);
  };

  return (
    <div className="login-container">
      <div style={{ width: '33%' }}>
        <Form
          {...layout}
          name="basic"
          initialValues={{ remember: true }}
          onFinish={onFinish}
          onFinishFailed={onFinishFailed}
        >
          <Form.Item
            label="Username"
            name="email"
            initialValue="1600002"
            rules={[{ required: true, message: 'Please input your email!' }]}
          >
            <Input />
          </Form.Item>
          <Form.Item
            label="Password"
            name="password"
            initialValue="1234"
            rules={[{ required: true, message: 'Please input your password!' }]}
          >
            <Input.Password />
          </Form.Item>
          <Form.Item
            label="Role"
            name="role"
            initialValue="student"
            rules={[{ required: true }]}
          >
            <Select defaultValue="student" style={{ width: 120 }}>
              <Option value="student">Student</Option>
              <Option value="employee">Employee</Option>
            </Select>
          </Form.Item>
          <Form.Item {...tailLayout}>
            <Button type="primary" htmlType="submit">
              Submit
            </Button>
            |
            <Button type="primary" onClick={onFinishSSO}>
              Login by Microsoft
            </Button>
          </Form.Item>
        </Form>
      </div>
    </div>
  );
}

LoginPage.propTypes = {
  account: PropTypes.object,
  emailMessages: PropTypes.object,
  error: PropTypes.string,
  idToken: PropTypes.string,
  graphProfile: PropTypes.object,
  onSignIn: PropTypes.func.isRequired,
  onSignOut: PropTypes.func.isRequired,
  onRequestEmailToken: PropTypes.func.isRequired,
};
export default AuthProvider(LoginPage);
