import React, { useEffect, useState } from 'react';
import { Table, Input, Button, Space, Tabs, Typography } from 'antd';
import Highlighter from 'react-highlight-words';
import {
  SearchOutlined,
  TableOutlined,
  InfoCircleOutlined,
} from '@ant-design/icons';

// import './index.scss';

import { getSubjectApi } from 'api/subject';
import { useSelector } from 'react-redux';
import { aggregateJson, multiAggregate } from 'utils/aggregate';
import { mock_data } from './mock';

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
    // setLoading(true);
    // return getSubjectApi(role).then(data => {
    //   setLoading(false);
    //   setData(data.res);
    //   setTableData(data.res);
    //   setPagination({
    //     ...params.pagination,
    //     total: data.res.length,
    //   });
    // });
    setData(mock_data.res);
    setTableData(mock_data.res);
    setPagination({
      ...params.pagination,
      total: mock_data.res.length,
    });
    return mock_data;
  };

  const onRegister = (text, record) => console.log(record);

  const detail_columns = [
    {
      title: 'Subject',
      dataIndex: 'Ma_mon',
      width: '10%',
      ...getColumnSearchProps('Ma_mon'),
    },
    {
      title: 'Class',
      dataIndex: 'Ma_lop',
      width: '10%',
      ...getColumnSearchProps('Ma_lop'),
    },
    {
      title: 'Main Teacher',
      dataIndex: 'Ma_giang_vien',
      width: '10%',
      ...getColumnSearchProps('Ma_giang_vien'),
    },
    {
      title: 'Action',
      dataIndex: '',
      key: 'x',
      width: '10%',
      render: (text, record) => (
        <Button type="primary" onClick={() => onRegister(text, record)}>
          Register
        </Button>
      ),
    },
  ];

  const onSearch = value => {
    setSemester(value);
  };
  useEffect(() => {
    if (semester !== null) {
      setTableData(data.filter(value => value['Ma_hoc_ky'] === semester));
    }
  }, [semester]);

  return (
    <div>
      <div>
        <Title>Class Registration For BKers</Title>
        <Search
          placeholder="SemesterID"
          allowClear
          enterButton="Search"
          size="large"
          onSearch={onSearch}
          style={{ margin: 10 }}
        />
      </div>
      {semester !== null && (
        <Table
          key="table_1"
          columns={detail_columns}
          dataSource={tableData}
          // pagination={{ pageSize: 50 }}
          scroll={{ y: 480 }}
          loading={loading}
        />
      )}
    </div>
  );
}

export default Resource;
