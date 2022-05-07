import { ApiProperty } from '@nestjs/swagger';

export class CreateRoomDto {
  @ApiProperty()
  title: string;

  @ApiProperty()
  userId: number;

  @ApiProperty()
  description: string;

  @ApiProperty()
  price: number;

  @ApiProperty()
  status: string;

  @ApiProperty()
  area: number;

  @ApiProperty()
  districtId: number;

  @ApiProperty()
  wardId: number;

  @ApiProperty()
  detail: string;

  // View
  @ApiProperty({ default: 0 })
  view: number;

  // Image
  @ApiProperty()
  images: string;
}
