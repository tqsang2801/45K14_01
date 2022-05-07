import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

import { CreateRoomDto } from './dto/create-room.dto';
import { UpdateRoomDto } from './dto/update-room.dto';
import { Image } from './entities/image.entity';
import { Room } from './entities/room.entity';

@Injectable()
export class RoomsService {
  constructor(
    @InjectRepository(Room) private roomRepo: Repository<Room>,
    @InjectRepository(Image) private imageRepo: Repository<Image>,
  ) {}

  create(_room: CreateRoomDto) {
    console.log(_room);
    const room = this.roomRepo.create(_room);
    return this.roomRepo.save(room);
  }

  findAll() {
    return this.roomRepo.find();
  }

  findOne(id: number) {
    return this.roomRepo.findOne(id);
  }

  update(id: number, updateRoomDto: UpdateRoomDto) {
    console.log(updateRoomDto);
    return this.roomRepo.update(id, updateRoomDto);
  }

  remove(id: number) {
    return this.roomRepo.delete(id);
  }
}
