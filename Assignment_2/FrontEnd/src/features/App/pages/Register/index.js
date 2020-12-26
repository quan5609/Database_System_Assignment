import React from 'react';
import { Form, Input, Button, message, Select } from 'antd';

import './index.scss';
import PropTypes from 'prop-types';
import { onLogin, onSignUp } from 'features/App/slice';
import { useDispatch } from 'react-redux';
import { useHistory } from 'react-router-dom';
// import { setCookie, deleteAllCookies } from 'utils/cookies';

const layout = {
  labelCol: { span: 8 },
  wrapperCol: { span: 16 },
};
const tailLayout = {
  wrapperCol: { offset: 8, span: 16 },
};

RegisterPage.propTypes = {};

function RegisterPage(props) {
  const dispatch = useDispatch();
  const history = useHistory();
  const { Option } = Select;

  // const {
  //   account,
  //   emailMessages,
  //   error,
  //   graphProfile,
  //   onSignIn,
  //   onSignOut,
  //   idToken,
  //   onRequestEmailToken,
  // } = props;
  const onFinish = values => {
    dispatch(onSignUp(values.email, values.password, values.role))
      .then(() => {
        message.success('register successfully');
        history.push('/login');
      })
      .catch(error => {
        message.error(error.response.data);
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
              <Option value="teacher">Teacher</Option>
              <Option value="deemployee">DeEmployee</Option>
              <Option value="soemployee">SoEmployee</Option>
            </Select>
          </Form.Item>
          <Form.Item {...tailLayout}>
            <Button type="primary" htmlType="submit">
              Register
            </Button>
          </Form.Item>
        </Form>
      </div>
    </div>
  );
}

RegisterPage.propTypes = {};
export default RegisterPage;
