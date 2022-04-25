import { ApiProperty } from '@nestjs/swagger';

export class CreateAddressDto {
  @ApiProperty()
  districtId: number;

  @ApiProperty()
  wardId: number;

  @ApiProperty()
  detail: string;
}
