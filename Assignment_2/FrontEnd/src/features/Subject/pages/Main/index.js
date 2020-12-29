import React, { useEffect, useState } from 'react';
import { Table, Input, Button, Space, Tabs, Switch } from 'antd';
import Highlighter from 'react-highlight-words';
import {
  SearchOutlined,
  TableOutlined,
  InfoCircleOutlined,
} from '@ant-design/icons';

import './index.scss';

import { getSubjectApi } from 'api/subject';
import { useSelector } from 'react-redux';
import { aggregateJson, multiAggregate } from 'utils/aggregate';

MainPage.propTypes = {};

function MainPage() {
  const { TabPane } = Tabs;
  const [data, setData] = useState([]);
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

  let detail_columns = [
    {
      title: 'Department',
      dataIndex: 'Ma_khoa',
      width: '10%',
      ...getColumnSearchProps('Ma_khoa'),
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
  ];
  if (role === 'student') {
    detail_columns = [
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
      {
        title: 'Credit',
        dataIndex: 'So_tin_chi',
        width: '10%',
        ...getColumnSearchProps('So_tin_chi'),
      },
    ];
  }

  if (role === 'teacher') {
    detail_columns = [
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
  }

  const [filter, setFilter] = useState(['Ma_hoc_ky', 'Ma_khoa', 'Ma_mon_hoc']);
  const [tableData, setTableData] = useState(data);
  const [tab, setTab] = useState(1);
  const [tableColumns, setTableColumns] = useState(detail_columns);

  const onFilterChange = (e, field) => {
    if (e) {
      if (!filter.includes(field)) {
        setFilter([...filter, field]);
      }
    }
    if (filter.includes(field)) {
      setFilter(filter.filter(value => value !== field));
    }
  };

  const changeTab = e => {
    if (e === '1') {
      setTab(e);
      setTableColumns(detail_columns);
      setTableData(data);
    } else {
      setTab(e);
      let filteredColumns = detail_columns.filter(value => {
        return filter.includes(value.dataIndex);
      });
      if (role == 'student') {
        filteredColumns = [
          {
            title: 'Semester',
            dataIndex: 'Ma_hoc_ky',
            width: '10%',
            ...getColumnSearchProps('Ma_hoc_ky'),
          },
          {
            title: 'Total Credit',
            dataIndex: 'total_credit',
            sorter: (a, b) => a.total - b.total,
            width: '10%',
          },
        ];
      }
      filteredColumns.push({
        title: role !== 'teacher' ? 'Total Subject' : 'Total Class',
        dataIndex: 'total',
        sorter: (a, b) => a.total - b.total,
        width: '10%',
      });
      const filteredData = aggregateJson(data, filter);
      setTableColumns(filteredColumns);
      setTableData(filteredData);
    }
  };

  React.useEffect(() => {
    if (tab !== 1) {
      let filteredColumns = detail_columns.filter(value => {
        return filter.includes(value.dataIndex);
      });
      filteredColumns.push({
        title: role !== 'teacher' ? 'Total Subject' : 'Total Class',
        dataIndex: 'total',
        sorter: (a, b) => a.total - b.total,
        width: '10%',
      });
      const filteredData = aggregateJson(data, filter);
      setTableColumns(filteredColumns);
      setTableData(filteredData);
    }
  }, [filter]);

  const studentSummary = multiAggregate(data, ['Ma_hoc_ky']);

  return (
    <div>
      <div>
        <p>`This is a ${role}`</p>
      </div>
      <Tabs defaultActiveKey="1" onChange={changeTab}>
        <TabPane
          tab={
            <span>
              <TableOutlined />
              Detail
            </span>
          }
          key="1"
        >
          <Table
            key="table_1"
            columns={tableColumns}
            dataSource={tableData}
            // pagination={{ pageSize: 50 }}
            scroll={{ y: 480 }}
            loading={loading}
          />
        </TabPane>

        <TabPane
          tab={
            <span>
              <InfoCircleOutlined />
              Summary
            </span>
          }
          key="2"
        >
          {role !== 'teacher' && role !== 'student' && (
            <div>
              <Switch
                checkedChildren="Department"
                unCheckedChildren="Department"
                defaultChecked
                style={{ margin: 10 }}
                onChange={e => onFilterChange(e, 'Ma_khoa')}
              />
              <Switch
                checkedChildren="Subject"
                unCheckedChildren="Subject"
                defaultChecked
                style={{ margin: 10 }}
                onChange={e => onFilterChange(e, 'Ma_mon_hoc')}
              />
            </div>
          )}
          {role === 'teacher' && (
            <div>
              <Switch
                checkedChildren="Subject"
                unCheckedChildren="Subject"
                defaultChecked
                style={{ margin: 10 }}
                onChange={e => onFilterChange(e, 'Ma_mon_hoc')}
              />
            </div>
          )}
          {role !== 'student' && (
            <Table
              key="table_2"
              columns={tableColumns}
              dataSource={tableData}
              // pagination={{ pageSize: 50 }}
              scroll={{ y: 480 }}
              loading={loading}
            />
          )}

          {role === 'student' && (
            <Table
              key="table_2"
              columns={tableColumns}
              dataSource={studentSummary}
              // pagination={{ pageSize: 50 }}
              scroll={{ y: 480 }}
              loading={loading}
            />
          )}
        </TabPane>
      </Tabs>
    </div>
  );
}

export default MainPage;
