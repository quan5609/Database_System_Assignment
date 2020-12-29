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
} from '@ant-design/icons';

// import './index.scss';

import { getAvailableBook, addBook, removeBook } from 'api/book';
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
    return getAvailableBook(role).then(data => {
      setLoading(false);
      setData(data.res);
      setTableData(data.res);
      setPagination({
        ...params.pagination,
        total: data.res.length,
      });
    });
  };

  const onAddBook = record => {
    const body_params = {
      ...record,
      classId: 'L01',
    };
    setLoading(true);
    return addBook(role, body_params)
      .then(() => {
        setLoading(false);
        message.success(
          `Add book ${body_params.bookId} to subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
        );
        fetch_detail({ pagination });
      })
      .catch(error => {
        message.error(error.response.data);
        fetch_detail({ pagination });
      });
  };

  const onRemoveBook = record => {
    console.log(record);
    const body_params = {
      classId: 'L01',
      semesterId: record['Ma_hoc_ky'],
      subjectId: record['Ma_mon_hoc'],
      bookId: record['Ma_giao_trinh'],
    };
    setLoading(true);
    return removeBook(role, body_params)
      .then(() => {
        setLoading(false);
        message.success(
          `Remove book ${body_params.bookId} to subject ${body_params.subjectId} in semester ${body_params.semesterId} successfully!`,
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
    setCurrentRecord(
      `${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}_${record['Ma_giao_trinh']}`,
    );
    setVisible(true);
  };

  const handleOk = value => {
    if (Object.keys(value).includes('semesterId')) {
      console.log(value);
      onAddBook(value);
    }
    setVisible(false);
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
      title: 'Book Number',
      dataIndex: 'Ma_giao_trinh',
      width: '10%',
      ...getColumnSearchProps('Ma_giao_trinh'),
    },
    {
      title: 'Book Name',
      dataIndex: 'Ten_giao_trinh',
      width: '10%',
      ...getColumnSearchProps('Ten_giao_trinh'),
    },
    {
      title: 'Action',
      dataIndex: '',
      key: 'x',
      width: '20%',
      render: (text, record) => {
        return (
          <div>
            <Button
              type="primary"
              style={{ marginRight: 10 }}
              // onClick={() => onAddBook(text, record)}
              onClick={() => showModal(record)}
            >
              Add
            </Button>
            <Modal
              visible={
                visible &&
                currentRecord ===
                  `${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}_${record['Ma_giao_trinh']}`
              }
              title={`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}_${record['Ma_giao_trinh']}`}
              onCancel={handleCancel}
              footer={[
                <Button key="back" onClick={handleCancel}>
                  Return
                </Button>,
                <Button
                  form={`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}_${record['Ma_giao_trinh']}`}
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
                name={`${record['Ma_hoc_ky']}_${record['Ma_mon_hoc']}_${record['Ma_giao_trinh']}`}
                initialValues={{ remember: true }}
                onFinish={handleOk}
                onCancel={handleCancel}
                // onFinish={onFinish}
                // onFinishFailed={onFinishFailed}
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
                <Form.Item label="Book Number" name="bookId">
                  <Input />
                </Form.Item>
              </Form>
            </Modal>
            <Button
              type="primary"
              danger
              style={{ marginRight: 10 }}
              onClick={() => onRemoveBook(record)}
            >
              Delete
            </Button>
          </div>
        );
      },
    },
  ];

  // const onSearch = value => {
  //   setSemester(value);
  // };
  // useEffect(() => {
  //   if (semester !== null) {
  //     setTableData(data.filter(value => value['Ma_hoc_ky'] === semester));
  //   }
  // }, [semester]);

  return (
    <div>
      <div>
        <Title>Reference Books of Main Responsible Subject</Title>
      </div>

      <Table
        key="table_1"
        columns={detail_columns}
        dataSource={tableData}
        // pagination={{ pageSize: 50 }}
        scroll={{ y: 480 }}
        loading={loading}
      />
    </div>
  );
}

export default Resource;
