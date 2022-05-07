import { TypeOrmModuleOptions } from '@nestjs/typeorm';

export const typeormConfig: TypeOrmModuleOptions = {
  type: 'mysql',
  host: process.env.DATABASE_HOST ?? 'localhost',
  port: 3306,
  username: 'root',
  password: 'root',
  database: 'findrooms',
  entities: ['dist/**/*.entity{.ts,.js}'],
  synchronize: true,
};
