import React, { Suspense, useEffect, useState } from 'react';
import { BrowserRouter, Route, Switch, Link, Redirect } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { Layout, Button, message } from 'antd';
import { MenuUnfoldOutlined, MenuFoldOutlined } from '@ant-design/icons';

import './index.scss';

import { getCookie } from 'utils/cookies';
import PropTypes from 'prop-types';
import LoginPage from 'features/App/pages/Login';
import RegisterPage from 'features/App/pages/Register';
import NotFound from 'components/NotFound';
import PrivateRoute from 'components/PrivateRoute';
import MainMenu from 'components/MainMenu';
import Loading from 'components/Loading';

import { getStore } from 'store';
import { login, onLogout } from './slice';

const store = getStore();
const { Header, Content, Sider } = Layout;

const Student = React.lazy(() =>
  import('features/Student').then(async module => {
    const reducer = await import('features/Student/slice').then(
      slide => slide.default,
    );
    store.injectReducer('students', reducer);
    return module;
  }),
);

const Teacher = React.lazy(() =>
  import('features/Teacher').then(async module => {
    const reducer = await import('features/Teacher/slice').then(
      slide => slide.default,
    );
    store.injectReducer('teachers', reducer);
    return module;
  }),
);

const Subject = React.lazy(() =>
  import('features/Subject').then(async module => {
    const reducer = await import('features/Subject/slice').then(
      slide => slide.default,
    );
    store.injectReducer('subjects', reducer);
    return module;
  }),
);

const Classes = React.lazy(() =>
  import('features/Classes').then(async module => {
    const reducer = await import('features/Classes/slice').then(
      slide => slide.default,
    );
    store.injectReducer('classes', reducer);
    return module;
  }),
);

const Book = React.lazy(() =>
  import('features/Book').then(async module => {
    const reducer = await import('features/Book/slice').then(
      slide => slide.default,
    );
    store.injectReducer('books', reducer);
    return module;
  }),
);

const Resource = React.lazy(() =>
  import('features/Resource').then(async module => {
    const reducer = await import('features/Resource/slice').then(
      slide => slide.default,
    );
    store.injectReducer('resources', reducer);
    return module;
  }),
);

function App(props) {
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
  const dispatch = useDispatch();
  const { token, loading } = useSelector(state => state.app);
  const [collapsed, setCollapsed] = useState(false);

  useEffect(() => {
    const tokenCookie = getCookie('token');
    const roleCookie = getCookie('role');
    if (tokenCookie) dispatch(login({ token: tokenCookie, role: roleCookie }));
  }, []);

  const handleLogout = () => {
    dispatch(onLogout());
  };
  const toggle = () => setCollapsed(!collapsed);

  return (
    <div className="app">
      {/* {console.log('BUGGGG', token)} */}
      <Suspense fallback={<div>Loading ...</div>}>
        <BrowserRouter>
          <Layout>
            {loading && <Loading />}
            {token && (
              <Sider
                style={{ minHeight: '100vh' }}
                trigger={null}
                collapsible
                collapsed={collapsed}
              >
                <Link to="/">
                  <div className="logo" />
                </Link>
                <MainMenu />
              </Sider>
            )}
            <Layout className="site-layout">
              {token && (
                <Header
                  className="site-layout-background"
                  style={{ padding: 0 }}
                >
                  {React.createElement(
                    collapsed ? MenuUnfoldOutlined : MenuFoldOutlined,
                    {
                      className: 'trigger',
                      onClick: toggle,
                    },
                  )}
                  <Button
                    onClick={handleLogout}
                    style={{ float: 'right', margin: 14 }}
                    type="dashed"
                    danger
                  >
                    Logout
                  </Button>
                </Header>
              )}
              <Content
                className="site-layout-background"
                style={{
                  margin: '24px 16px',
                  padding: 24,
                  minHeight: 280,
                }}
              >
                <Switch>
                  {/* <PrivateRoute path="/" component={User} /> */}
                  <Redirect exact from="/" to="/resources" />
                  <PrivateRoute path="/resources" component={Resource} />
                  <PrivateRoute path="/subjects" component={Subject} />
                  <PrivateRoute path="/teachers" component={Teacher} />
                  <PrivateRoute path="/classes" component={Classes} />
                  <PrivateRoute path="/students" component={Student} />
                  <PrivateRoute path="/books" component={Book} />
                  <Route exact path="/login" component={LoginPage} />
                  <Route exact path="/register" component={RegisterPage} />
                  <Route component={NotFound} />
                </Switch>
              </Content>
            </Layout>
          </Layout>
        </BrowserRouter>
      </Suspense>
    </div>
  );
}

App.propTypes = {};
export default App;
