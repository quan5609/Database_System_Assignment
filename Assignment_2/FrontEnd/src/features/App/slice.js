/* eslint-disable no-param-reassign */
import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';
import { setCookie, deleteAllCookies } from 'utils/cookies';
import { loginApi, registerApi } from 'api/authentication';

export const initialState = {
  userInfo: {
    username: null,
    role: null,
  },
  token: null,
  loading: false,
};

const slice = createSlice({
  name: 'app',
  initialState,
  reducers: {
    login(state, action) {
      if (!state.token) {
        console.log(action.payload, state.token);
        state.token = action.payload.token;
        state.userInfo = {
          username: action.payload.username,
          role: action.payload.role,
        };
      }
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
        setCookie('role', role);
        dispatch(login({ token, username, role }));
        dispatch(stopLoading());
        resolve();
      })
      .catch(error => {
        dispatch(stopLoading());
        reject(error);
      });
  });
};

export const onSignUp = (username, password, role) => dispatch => {
  return new Promise((resolve, reject) => {
    dispatch(loading());
    return registerApi(username, password, role)
      .then(res => {
        dispatch(stopLoading());
        resolve();
      })
      .catch(error => {
        dispatch(stopLoading());
        reject(error);
      });
  });
};
