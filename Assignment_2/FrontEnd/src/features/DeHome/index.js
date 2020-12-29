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
  InfoCircleOutlined,
  FileAddOutlined,
} from '@ant-design/icons';

// import './index.scss';

import { getAvailableBook, addBook, removeBook } from 'api/book';
import {
  getSubjectApi,
  addTeacher,
  removeSubject,
  addSubject,
} from 'api/subject';
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
    return getSubjectApi(role).then(data => {
      setLoading(false);
      setData(data.res);
      setTableData(data.res);
      setPagination({
        ...params.pagination,
        total: data.res.length,
      });
    });
  };

  const onAddTeacher = record => {
    const body_params = {
      ...record,
    };
    setLoading(true);
    return addTeacher(role, body_params)
      .then(() => {
        setLoading(false);
        message.success(
          `Add teacher ${body_params.teacherSsn} to week ${body_params.weekId} of class ${body_params.classId} to subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
        );
        fetch_detail({ pagination });
      })
      .catch(error => {
        message.error(error.response.data);
        fetch_detail({ pagination });
      });
  };

  const onRemoveSubject = record => {
    // console.log(record);
    const body_params = {
      semesterId: record['Ma_hoc_ky'],
      subjectId: record['Ma_mon_hoc'],
    };
    setLoading(true);
    return removeSubject(role, body_params)
      .then(() => {
        setLoading(false);
        message.success(
          `Remove subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
        );
        fetch_detail({ pagination });
      })
      .catch(error => {
        message.error(error.response.data);
        fetch_detail({ pagination });
      });
  };

  const [visible, setVisible] = useState(false);
  const [currentRecord, setCurrentRecord] = useState('');
  const showModal = record => {
    if (record === 'add_subject') {
      setCurrentRecord(record);
      setVisible(true);
    } else {
      setCurrentRecord(`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}`);
      setVisible(true);
    }
  };

  const handleOk = value => {
    if (Object.keys(value).includes('semesterId')) {
      // console.log(value);
      onAddTeacher(value);
    }
    setVisible(false);
  };

  const onAddSubject = value => {
    console.log(value);
    if (Object.keys(value).includes('semesterId')) {
      const body_params = {
        ...value,
      };
      setLoading(true);
      return addSubject(role, body_params)
        .then(() => {
          setLoading(false);
          message.success(
            `Add subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
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
      title: 'Action',
      dataIndex: '',
      key: 'x',
      width: '10%',
      render: (text, record) => {
        return (
          <div>
            <Button
              type="primary"
              style={{ marginRight: 10 }}
              onClick={() => showModal(record)}
            >
              Add Teacher
            </Button>
            <Modal
              visible={
                visible &&
                currentRecord ===
                  `${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}`
              }
              title={`modal_${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}`}
              onCancel={handleCancel}
              footer={[
                <Button key="back" onClick={handleCancel}>
                  Return
                </Button>,
                <Button
                  form={`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}`}
                  key="submit"
                  type="primary"
                  loading={loading}
                  onClick={value => handleOk(value)}
                  htmlType="submit"
                >
                  Submit
                </Button>,
              ]}
            >
              <Form
                name={`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}`}
                onFinish={handleOk}
                onCancel={handleCancel}
              >
                <Form.Item
                  label="Semester"
                  name="semesterId"
                  initialValue={record['Ma_hoc_ky']}
                >
                  <Input disabled={true} />
                </Form.Item>
                <Form.Item
                  label="Subject"
                  name="subjectId"
                  initialValue={record['Ma_mon_hoc']}
                >
                  <Input disabled={true} />
                </Form.Item>
                <Form.Item label="Class" name="classId">
                  <Input />
                </Form.Item>
                <Form.Item label="Week" name="weekId">
                  <Input />
                </Form.Item>
                <Form.Item label="Teacher Number" name="teacherSsn">
                  <Input />
                </Form.Item>
              </Form>
            </Modal>
            <Button
              type="primary"
              danger
              style={{ marginRight: 10 }}
              onClick={() => onRemoveSubject(record)}
            >
              Delete
            </Button>
          </div>
        );
      },
    },
  ];

  return (
    <div>
      <div>
        <Title>Opening Subject</Title>
        <Button
          type="primary"
          shape="round"
          icon={<FileAddOutlined />}
          style={{ margin: 10 }}
          onClick={() => showModal('add_subject')}
        >
          Open New Subject
        </Button>
        <Modal
          visible={visible && currentRecord === 'add_subject'}
          title="Add Subject"
          onCancel={handleCancel}
          footer={[
            <Button key="back" onClick={handleCancel}>
              Return
            </Button>,
            <Button
              form="add_subject"
              key="submit"
              type="primary"
              loading={loading}
              onClick={value => onAddSubject(value)}
              htmlType="submit"
            >
              Submit
            </Button>,
          ]}
        >
          <Form
            name="add_subject"
            onFinish={onAddSubject}
            onCancel={handleCancel}
          >
            <Form.Item label="Semester" name="semesterId">
              <Input />
            </Form.Item>
            <Form.Item label="Subject" name="subjectId">
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
