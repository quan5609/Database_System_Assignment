import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getBookApi = () => {
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: 'http://localhost:5000/soemployee/list-reference-book',
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
