import groupBy from 'lodash/groupBy';
import alasql from 'alasql';

export const aggregateJson = (data, filters) => {
  let filteredData = data.map((value, index) => {
    const filteredValue = {
      ...value,
      total: 1,
    };
    return filteredValue;
  });
  const filter_str = filters.join(',');
  const res = alasql(
    'SELECT ' +
      filter_str +
      ', SUM(CAST([total] AS INT)) AS [total] \
                  FROM ? GROUP BY ' +
      filter_str,
    [filteredData],
  );
  return res;
};

export const multiAggregate = (data, filters) => {
  let filteredData = data.map((value, index) => {
    const filteredValue = {
      ...value,
      total: 1,
    };
    return filteredValue;
  });
  const filter_str = filters.join(',');
  const res = alasql(
    'SELECT ' +
      filter_str +
      ', SUM(CAST([total] AS INT)) AS [total], SUM(CAST([So_tin_chi] AS INT)) AS [total_credit] \
                  FROM ? GROUP BY ' +
      filter_str,
    [filteredData],
  );
  return res;
};
