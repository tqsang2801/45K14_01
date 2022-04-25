import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import { AddressModule } from './address/address.module';
import { typeormConfig } from './configs';
import { UsersModule } from './users/users.module';
import { RoomsModule } from './rooms/rooms.module';
@Module({
  imports: [TypeOrmModule.forRoot(typeormConfig), UsersModule, AddressModule, RoomsModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
