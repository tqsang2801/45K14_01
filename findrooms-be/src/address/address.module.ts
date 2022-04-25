import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import { AddressController } from './address.controller';
import { AddressService } from './address.service';
import { Address } from './entities/address.entity';
import { District } from './entities/district.entity';
import { Ward } from './entities/ward.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Address, District, Ward])],
  controllers: [AddressController],
  providers: [AddressService],
  exports: [AddressService],
})
export class AddressModule {}
