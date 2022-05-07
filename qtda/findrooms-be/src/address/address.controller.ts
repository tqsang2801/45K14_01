import { Controller, Get, Param } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';

import { AddressService } from './address.service';

@ApiTags('Address')
@Controller('address')
export class AddressController {
  constructor(private readonly addressService: AddressService) {}

  @Get('/districts')
  districts() {
    return this.addressService.districts();
  }

  @Get('/wards/:districtId')
  wards(@Param('districtId') districtId: number) {
    return this.addressService.wards(districtId);
  }
}
