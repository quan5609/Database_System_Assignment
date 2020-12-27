import React, { useEffect, useState } from 'react';
import { Table, Input, Button, Space } from 'antd';
import Highlighter from 'react-highlight-words';
import { SearchOutlined } from '@ant-design/icons';

import './index.scss';

import { getUsersApi } from 'api/user';
import { useSelector } from 'react-redux';
import { mock } from './mock';

MainPage.propTypes = {};

function MainPage() {
  const [data, setData] = useState([]);
  const [pagination, setPagination] = useState({ current: 1, pageSize: 10 });
  const [loading, setLoading] = useState(false);
  const { role } = useSelector(state => state.app.userInfo);
  useEffect(() => {
    fetch({ pagination });
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

  const fetch = (params = {}) => {
    // setLoading(true);
    // return getUsersApi(getRandomuserParams(params)).then(res => {
    //   setLoading(false);
    //   setData(res.results);
    //   setPagination({
    //     ...params.pagination,
    //     total: 200,
    //   });
    // });
    setData(mock.res);
    setPagination({
      ...params.pagination,
      total: data.length,
    });
    return mock;
  };

  const columns = [
    {
      title: 'Department',
      dataIndex: 'Ma_khoa',
      width: '20%',
      ...getColumnSearchProps('Ma_khoa'),
    },
    {
      title: 'Semester',
      dataIndex: 'Ma_hoc_ky',
      width: '20%',
      ...getColumnSearchProps('Ma_hoc_ky'),
    },
    {
      title: 'Subject',
      dataIndex: 'Ma_mon_hoc',
      ...getColumnSearchProps('Ma_mon_hoc'),
    },
  ];

  return (
    <div>
      <div>
        <p>`This is a ${role}`</p>
      </div>
      <Table
        columns={columns}
        dataSource={data}
        // pagination={{ pageSize: 50 }}
        scroll={{ y: 480 }}
        loading={loading}
      />
    </div>
  );
}

export default MainPage;
