import { ApiProperty } from '@nestjs/swagger';

export class CreateUserDto {
  @ApiProperty()
  username: string;

  @ApiProperty()
  password: string;

  @ApiProperty()
  fullname: string;

  @ApiProperty({ required: false })
  role?: string;

  @ApiProperty()
  gender: boolean;

  @ApiProperty()
  phone: string;

  @ApiProperty()
  email: string;

  @ApiProperty()
  districtId: number;

  @ApiProperty()
  wardId: number;

  @ApiProperty()
  detail: string;

  addressId: number;
}
