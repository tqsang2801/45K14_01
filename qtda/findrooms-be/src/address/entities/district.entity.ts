import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class District {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  prefix: string;
}
