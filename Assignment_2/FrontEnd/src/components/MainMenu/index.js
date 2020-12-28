import React from 'react';
import PropTypes from 'prop-types';
import { useLocation, Link } from 'react-router-dom';
import { Menu } from 'antd';
import { useSelector } from 'react-redux';
import { UserOutlined, VideoCameraOutlined } from '@ant-design/icons';

MainMenu.propTypes = {};

function MainMenu(props) {
  const location = useLocation();
  const { role } = useSelector(state => state.app.userInfo);
  return (
    <Menu theme="dark" mode="inline" selectedKeys={[location.pathname]}>
      {role !== 'student' && (
        <Menu.Item key="/students" icon={<UserOutlined />}>
          Student
          <Link to="/students" />
        </Menu.Item>
      )}
      <Menu.Item key="/subjects" icon={<UserOutlined />}>
        Subject
        <Link to="/subjects" />
      </Menu.Item>
      {role !== 'teacher' && (
        <Menu.Item key="/teachers" icon={<UserOutlined />}>
          Teacher
          <Link to="/teachers" />
        </Menu.Item>
      )}
      <Menu.Item key="/books" icon={<UserOutlined />}>
        Reference Book
        <Link to="/books" />
      </Menu.Item>
      <Menu.Item key="/resources" icon={<VideoCameraOutlined />}>
        Resource
        <Link to="/resources" />
      </Menu.Item>
    </Menu>
  );
}

export default MainMenu;
