import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Address {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  districtId: number;

  @Column()
  wardId: number;

  @Column()
  detail: string;
}
