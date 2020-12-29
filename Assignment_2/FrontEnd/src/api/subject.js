import axios from 'axios';
import { getCookie } from 'utils/cookies';

export const getSubjectApi = role => {
  const apiUrl = {
    student: 'http://localhost:5000/student/class-of-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/list-subject',
    teacher: 'http://localhost:5000/teacher/responsible-classes',
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

export const getAvailableSubjectApi = role => {
  const apiUrl = {
    student: 'http://localhost:5000/student/subject-class-teacher',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/list-subject',
    teacher: 'http://localhost:5000/teacher/responsible-classes',
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

export const registerClass = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/list-subject',
    teacher: 'http://localhost:5000/teacher/responsible-classes',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        ...params,
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

export const addTeacher = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/add-teacher-of-class',
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

export const removeSubject = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/remove-subject',
    teacher: 'http://localhost:5000/teacher/add-teacher-of-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        semesterId: params.semesterId,
        subjectId: params.subjectId,
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

export const addSubject = (role, params) => {
  const apiUrl = {
    student: 'http://localhost:5000/student/register-subject',
    soemployee: 'http://localhost:5000/soemployee/list-subject',
    deemployee: 'http://localhost:5000/deemployee/add-subject',
    teacher: 'http://localhost:5000/teacher/add-teacher-of-class',
  };
  return new Promise((resolve, reject) => {
    return axios({
      method: 'post',
      url: apiUrl[role],
      data: {
        token: getCookie('token'),
        semesterId: params.semesterId,
        subjectId: params.subjectId,
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
