import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getStudentApi = role => {
  const apiUrl = {
    soemployee: 'http://localhost:5000/soemployee/list-student',
    deemployee: 'http://localhost:5000/deemployee/list-student',
    teacher: 'http://localhost:5000/teacher/student-of-resopnsible-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
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
