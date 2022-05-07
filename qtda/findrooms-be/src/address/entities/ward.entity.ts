import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Ward {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  prefix: string;

  @Column()
  name: string;

  @Column()
  districtId: number;
}
