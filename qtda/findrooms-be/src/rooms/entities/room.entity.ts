import {
  Column,
  CreateDateColumn,
  Entity,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Entity()
export class Room {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  userId: number;

  @Column()
  title: string;

  @Column()
  description: string;

  @Column()
  price: number;

  @Column({ default: 'WAIT' })
  status: string;

  @Column()
  area: number;

  @Column()
  districtId: number;

  @Column()
  wardId: number;

  @Column()
  detail: string;

  @CreateDateColumn()
  create_at: Date;

  @Column({ default: 0 })
  view: number;

  @Column()
  images: string;
}
