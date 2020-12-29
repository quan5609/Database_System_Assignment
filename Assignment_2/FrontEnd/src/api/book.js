import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getBookApi = role => {
  const apiUrl = {
    student: 'http://localhost:5000/student/subject-reference-book',
    soemployee: 'http://localhost:5000/soemployee/list-reference-book',
    deemployee: 'http://localhost:5000/deemployee/list-reference-book',
    teacher:
      'http://localhost:5000/teacher/reference-book-of-responsible-subject',
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

export const getAvailableBook = role => {
  const apiUrl = {
    student: 'http://localhost:5000/student/subject-reference-book',
    soemployee: 'http://localhost:5000/soemployee/list-reference-book',
    deemployee: 'http://localhost:5000/deemployee/list-reference-book',
    teacher:
      'http://localhost:5000/teacher/reference-book-of-main-responsible-subject',
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

export const addBook = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/list-subject',
    teacher: 'http://localhost:5000/teacher/add-reference-book',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        subjectId: params.subjectId,
        bookId: params.bookId,
        semesterId: params.semesterId,
        classId: params.classId,
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

export const removeBook = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/list-subject',
    teacher: 'http://localhost:5000/teacher/remove-reference-book',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        subjectId: params.subjectId,
        bookId: params.bookId,
        semesterId: params.semesterId,
        classId: params.classId,
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
