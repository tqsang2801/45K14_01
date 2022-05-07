import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

import { Address } from './entities/address.entity';
import { District } from './entities/district.entity';
import { Ward } from './entities/ward.entity';

@Injectable()
export class AddressService {
  constructor(
    @InjectRepository(Address) private addressRepo: Repository<Address>,
    @InjectRepository(District) private districtRepo: Repository<District>,
    @InjectRepository(Ward) private wardRepo: Repository<Ward>,
  ) {}

  districts() {
    return this.districtRepo.find();
  }

  wards(districtId: number) {
    return this.wardRepo.find({ districtId });
  }
}
