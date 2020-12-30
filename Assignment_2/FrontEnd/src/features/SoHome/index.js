import React, { useEffect, useState } from 'react';
import {
  Table,
  Input,
  Button,
  Space,
  Tabs,
  Typography,
  message,
  Modal,
  Form,
} from 'antd';
import Highlighter from 'react-highlight-words';
import {
  SearchOutlined,
  TableOutlined,
  FileExcelOutlined,
  FileAddOutlined,
} from '@ant-design/icons';

// import './index.scss';

import { getSubjectApi, addTeacher, addSubject } from 'api/subject';

import { getStudentApi, addStudent, removeStudent } from 'api/student';
import { useSelector } from 'react-redux';

Resource.propTypes = {};
const { Search } = Input;
const { Title } = Typography;

function Resource() {
  const { TabPane } = Tabs;
  const [data, setData] = useState([]);
  const [tableData, setTableData] = useState(data);
  const [semester, setSemester] = useState(null);
  const [pagination, setPagination] = useState({ current: 1, pageSize: 10 });
  const [loading, setLoading] = useState(false);
  const { role } = useSelector(state => state.app.userInfo);
  useEffect(() => {
    fetch_detail({ pagination });
  }, []);

  const [state, setState] = useState({
    searchText: [],
    searchedColumn: '',
  });

  let searchInput = null;
  const getColumnSearchProps = dataIndex => ({
    filterDropdown: ({
      setSelectedKeys,
      selectedKeys,
      confirm,
      clearFilters,
    }) => (
      <div style={{ padding: 8 }}>
        <Input
          ref={node => {
            searchInput = node;
          }}
          placeholder={`Search ${dataIndex}`}
          value={selectedKeys}
          onChange={e => {
            const values = e.target.value ? e.target.value.split(',') : [];
            console.log(values);
            setSelectedKeys(values);
          }}
          onPressEnter={() => handleSearch(selectedKeys, confirm, dataIndex)}
          style={{ width: 188, marginBottom: 8, display: 'block' }}
        />
        <Space>
          <Button
            type="primary"
            onClick={() => handleSearch(selectedKeys, confirm, dataIndex)}
            icon={<SearchOutlined />}
            size="small"
            style={{ width: 90 }}
          >
            Search
          </Button>
          <Button
            onClick={() => handleReset(clearFilters)}
            size="small"
            style={{ width: 90 }}
          >
            Reset
          </Button>
        </Space>
      </div>
    ),
    filterIcon: filtered => (
      <SearchOutlined style={{ color: filtered ? '#1890ff' : undefined }} />
    ),
    onFilter: (value, record) =>
      record[dataIndex]
        ? record[dataIndex]
            .toString()
            .toLowerCase()
            .includes(value.toLowerCase())
        : '',
    onFilterDropdownVisibleChange: visible => {
      if (visible) {
        setTimeout(() => searchInput.select(), 100);
      }
    },
    render: text =>
      state.searchedColumn === dataIndex ? (
        <Highlighter
          highlightStyle={{ backgroundColor: '#ffc069', padding: 0 }}
          searchWords={state.searchText}
          autoEscape
          textToHighlight={text ? text.toString() : ''}
        />
      ) : (
        text
      ),
  });

  const handleSearch = (selectedKeys, confirm, dataIndex) => {
    confirm();
    setState({
      searchText: selectedKeys,
      searchedColumn: dataIndex,
    });
  };

  const handleReset = clearFilters => {
    clearFilters();
    setState({ searchText: [] });
  };

  const fetch_detail = (params = {}) => {
    setLoading(true);
    return getStudentApi(role).then(data => {
      setLoading(false);
      setData(data.res);
      setTableData(data.res);
      setPagination({
        ...params.pagination,
        total: data.res.length,
      });
    });
  };

  const onRemoveSubject = value => {
    // console.log(record);
    if (Object.keys(value).includes('semesterId')) {
      const body_params = {
        ...value,
      };
      setLoading(true);
      return removeStudent(role, body_params)
        .then(() => {
          setLoading(false);
          message.success(
            `Remove student ${body_params.studentId} to class ${body_params.classId} of subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
          );
          setVisible(false);
          fetch_detail({ pagination });
        })
        .catch(error => {
          message.error(error.response.data);
          fetch_detail({ pagination });
        });
    }
  };

  const [visible, setVisible] = useState(false);
  const [currentRecord, setCurrentRecord] = useState('');
  const showModal = record => {
    setCurrentRecord(record);
    setVisible(true);
  };

  const onAddStudent = value => {
    // console.log(value);
    if (Object.keys(value).includes('semesterId')) {
      const body_params = {
        ...value,
      };
      setLoading(true);
      return addStudent(role, body_params)
        .then(() => {
          setLoading(false);
          message.success(
            `Add student ${body_params.studentId} to class ${body_params.classId} of subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
          );
          setVisible(false);
          fetch_detail({ pagination });
        })
        .catch(error => {
          message.error(error.response.data);
          fetch_detail({ pagination });
        });
    }
  };

  const handleCancel = () => {
    setVisible(false);
  };

  const detail_columns = [
    {
      title: 'Student Number',
      dataIndex: 'ssn',
      width: '10%',
      ...getColumnSearchProps('ssn'),
    },
    {
      title: 'Semester',
      dataIndex: 'Ma_hoc_ky',
      width: '10%',
      ...getColumnSearchProps('Ma_hoc_ky'),
    },
    {
      title: 'Subject',
      dataIndex: 'Ma_mon_hoc',
      width: '10%',
      ...getColumnSearchProps('Ma_mon_hoc'),
    },
    {
      title: 'Class',
      dataIndex: 'Ma_lop_hoc',
      width: '10%',
      ...getColumnSearchProps('Ma_lop_hoc'),
    },
  ];

  return (
    <div>
      <div>
        <Title>Student Registration</Title>
        <Button
          type="primary"
          shape="round"
          icon={<FileAddOutlined />}
          style={{ margin: 10 }}
          onClick={() => showModal('add_student')}
        >
          Add New Student
        </Button>
        <Modal
          visible={visible && currentRecord === 'add_student'}
          title="Add Student"
          onCancel={handleCancel}
          footer={[
            <Button key="back" onClick={handleCancel}>
              Return
            </Button>,
            <Button
              form="add_student"
              key="submit"
              type="primary"
              loading={loading}
              onClick={value => onAddStudent(value)}
              htmlType="submit"
            >
              Submit
            </Button>,
          ]}
        >
          <Form
            name="add_student"
            onFinish={onAddStudent}
            onCancel={handleCancel}
          >
            <Form.Item label="Semester" name="semesterId">
              <Input />
            </Form.Item>
            <Form.Item label="Subject" name="subjectId">
              <Input />
            </Form.Item>
            <Form.Item label="Class" name="classId">
              <Input />
            </Form.Item>
            <Form.Item label="Student ID" name="studentId">
              <Input />
            </Form.Item>
          </Form>
        </Modal>
        <Button
          type="primary"
          danger
          shape="round"
          icon={<FileExcelOutlined />}
          style={{ margin: 10 }}
          onClick={() => showModal('remove_student')}
        >
          Remove Student
        </Button>
        <Modal
          visible={visible && currentRecord === 'remove_student'}
          title="Remove Student"
          onCancel={handleCancel}
          footer={[
            <Button key="back" onClick={handleCancel}>
              Return
            </Button>,
            <Button
              form="remove_student"
              key="submit"
              type="primary"
              loading={loading}
              onClick={value => onRemoveSubject(value)}
              htmlType="submit"
            >
              Submit
            </Button>,
          ]}
        >
          <Form
            name="remove_student"
            onFinish={onRemoveSubject}
            onCancel={handleCancel}
          >
            <Form.Item label="Semester" name="semesterId">
              <Input />
            </Form.Item>
            <Form.Item label="Subject" name="subjectId">
              <Input />
            </Form.Item>
            <Form.Item label="Class" name="classId">
              <Input />
            </Form.Item>
            <Form.Item label="Student ID" name="studentId">
              <Input />
            </Form.Item>
          </Form>
        </Modal>
      </div>
      <Table
        key="table_1"
        columns={detail_columns}
        dataSource={tableData}
        scroll={{ y: 480 }}
        loading={loading}
      />
    </div>
  );
}

export default Resource;
