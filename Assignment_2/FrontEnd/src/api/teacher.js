import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getTeacherApi = role => {
  const apiUrl = {
    student: 'http://localhost:5000/student/class-of-subject',
    soemployee: 'http://localhost:5000/soemployee/list-teacher',
    deemployee: 'http://localhost:5000/deemployee/list-teacher',
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

export const removeTeacher = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/remove-teacher-of-class',
    teacher: 'http://localhost:5000/teacher/add-teacher-of-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        teacherSsn: params.teacherSsn,
        classId: params.classId,
        subjectId: params.subjectId,
        semesterId: params.semesterId,
        weekId: params.weekId,
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
