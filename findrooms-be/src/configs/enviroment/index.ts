import { config } from 'dotenv';

config();

export const env = {
  PORT: parseInt(process.env.PORT) ?? 3001,
};
