import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getStudentApi = () => {
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: 'http://localhost:5000/soemployee/list-student',
      data: {
        token: getCookie('token'),
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
