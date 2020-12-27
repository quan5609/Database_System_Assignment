/* eslint-disable no-param-reassign */
import { createSlice } from '@reduxjs/toolkit';

export const initialState = {
  startDate: null,
  endDate: null,
};

const slice = createSlice({
  name: 'subjects',
  initialState,
  reducers: {
    setFilter: (state, action) => {
      state.startDate = action.payload.startDate;
      state.endDate = action.payload.endDate;
    },
  },
});

export const { setFilter } = slice.actions;
export default slice.reducer;
