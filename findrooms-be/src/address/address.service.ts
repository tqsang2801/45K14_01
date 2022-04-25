import { Injectable, Logger } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

import { CreateAddressDto } from './dto/create-address.dto';
import { UpdateAddressDto } from './dto/update-address.dto';
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

  create(_address: CreateAddressDto) {
    Logger.log(JSON.parse(JSON.stringify(_address)));
    const address = this.addressRepo.create(_address);
    return this.addressRepo.save(address);
  }

  findAll() {
    return this.addressRepo.find();
  }

  findOne(id: number) {
    return this.addressRepo.findOne(id);
  }

  update(id: number, updateAddressDto: UpdateAddressDto) {
    return this.addressRepo.update(id, updateAddressDto);
  }

  remove(id: number) {
    return `This action removes a #${id} address`;
  }
}
