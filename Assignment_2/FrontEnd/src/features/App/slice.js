/* eslint-disable no-param-reassign */
import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';
import { setCookie, deleteAllCookies } from 'utils/cookies';
import { loginApi } from 'api/authentication';
import { msalApp } from 'features/App/pages/Login/auth-utils';

export const initialState = {
  userInfo: {
    accessToken: null,
    exp: null,
    fullName: null,
    // domain: null,
    email: null,
  },
  token: null,
  loading: false,
};

const slice = createSlice({
  name: 'app',
  initialState,
  reducers: {
    login(state, action) {
      state.token = action.payload.token;
    },
    loginSSO(state, action) {
      state.userInfo = action.payload;
      state.token = action.payload.accessToken;
    },
    logout(state, action) {
      state.token = null;
      state.userInfo = initialState.userInfo;
    },
    loading(state, action) {
      state.loading = true;
    },
    stopLoading(state, action) {
      state.loading = false;
    },
  },
});

export const { login, logout, loading, stopLoading, loginSSO } = slice.actions;
export default slice.reducer;

export const onLogout = () => dispatch => {
  dispatch(loading());
  deleteAllCookies();
  dispatch(logout());
  // dispatch(msalApp.logout());
  dispatch(stopLoading());
};

export const onLoginSSO = token => dispatch => {
  dispatch(loading());
  const userInfo = {
    accessToken: token.rawIdToken,
    exp: token.expiration,
    fullName: token.name,
    email: token.preferredName,
  };
  setCookie('token', token.rawIdToken);
  dispatch(loginSSO(userInfo));
  dispatch(stopLoading());
};

export const onLogin = (username, password, role) => dispatch => {
  return new Promise((resolve, reject) => {
    dispatch(loading());
    return loginApi(username, password, role)
      .then(res => {
        const { token } = res;
        setCookie('token', token);
        dispatch(login({ token }));
        dispatch(stopLoading());
        resolve();
      })
      .catch(error => {
        dispatch(stopLoading());
        reject(error);
      });
  });
};
