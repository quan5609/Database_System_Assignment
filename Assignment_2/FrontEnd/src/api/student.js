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

export const addStudent = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/add-register',
    soemployee: 'http://localhost:5000/soemployee/add-register',
    deemployee: 'http://localhost:5000/deemployee/add-subject',
    teacher: 'http://localhost:5000/teacher/add-teacher-of-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        newStudentId: params.studentId,
        newClassId: params.classId,
        newSemesterId: params.semesterId,
        newSubjectId: params.subjectId,
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

export const removeStudent = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/add-register',
    soemployee: 'http://localhost:5000/soemployee/remove-register',
    deemployee: 'http://localhost:5000/deemployee/add-subject',
    teacher: 'http://localhost:5000/teacher/add-teacher-of-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        oldStudentId: params.studentId,
        oldClassId: params.classId,
        oldSemesterId: params.semesterId,
        oldSubjectId: params.subjectId,
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
