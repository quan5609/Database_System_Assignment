import axios from 'axios';

export const loginApi = (username, password, role) => {
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      // url: 'https://reqres.in/api/login',
      url: 'http://localhost:5000/login',
      data: {
        username,
        password,
        role,
      },
    })
      .then(res => {
        resolve(res.data);
      })
      .catch(error => {
        reject(error);
      });
  });
};

export const registerApi = (username, password, role) => {
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: 'http://localhost:5000/register',
      data: {
        username,
        password,
        role,
      },
    })
      .then(res => {
        resolve(res.data);
      })
      .catch(error => {
        reject(error);
      });
  });
};
