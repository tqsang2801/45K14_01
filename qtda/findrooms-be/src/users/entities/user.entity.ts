import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class User {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  username: string;

  @Column()
  password: string;

  @Column()
  fullname: string;

  @Column({ default: 'USER' })
  role?: string;

  @Column()
  gender: boolean;

  @Column()
  phone: string;

  @Column({ default: null })
  email?: string;

  @Column()
  districtId: number;

  @Column()
  wardId: number;

  @Column()
  detail: string;
}
