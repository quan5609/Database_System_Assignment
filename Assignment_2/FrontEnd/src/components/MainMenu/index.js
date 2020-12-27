import React from 'react';
import PropTypes from 'prop-types';
import { useLocation, Link } from 'react-router-dom';
import { Menu } from 'antd';
import { UserOutlined, VideoCameraOutlined } from '@ant-design/icons';

MainMenu.propTypes = {};

function MainMenu(props) {
  const location = useLocation();
  return (
    <Menu theme="dark" mode="inline" selectedKeys={[location.pathname]}>
      <Menu.Item key="/students" icon={<UserOutlined />}>
        Student
        <Link to="/students" />
      </Menu.Item>
      <Menu.Item key="/resources" icon={<VideoCameraOutlined />}>
        Resource
        <Link to="/resources" />
      </Menu.Item>
    </Menu>
  );
}

export default MainMenu;
