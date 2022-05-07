import axios from 'axios';

export const api = axios.create({
  // eslint-disable-next-line no-constant-condition
  baseURL: true ? 'http://78.142.218.131:3100' : 'http://localhost:3100',
});
