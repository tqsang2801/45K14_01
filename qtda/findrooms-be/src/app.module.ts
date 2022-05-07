import { Module } from '@nestjs/common';
import { ServeStaticModule } from '@nestjs/serve-static';
import { TypeOrmModule } from '@nestjs/typeorm';
import { join } from 'path';

import { AddressModule } from './address/address.module';
import { typeormConfig } from './configs';
import { RoomsModule } from './rooms/rooms.module';
import { UsersModule } from './users/users.module';

console.log(typeormConfig);

@Module({
  imports: [
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
      exclude: ['/api*'],
    }),
    TypeOrmModule.forRoot(typeormConfig),
    UsersModule,
    AddressModule,
    RoomsModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
