import { CalendarFilled, EyeFilled } from '@ant-design/icons';
import { Carousel, Descriptions } from 'antd';
import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useRecoilValue } from 'recoil';

import { api } from '~/configs/axios';
import { env } from '~/configs/env';
import { useCountView, useFormatDate } from '~/hooks';
import { MainLayout } from '~/layouts';
import { districtAtom, Room, wardsAtom } from '~/recoil/state';

const RoomDetail = () => {
  const countView = useCountView();
  const formatDate = useFormatDate();
  const distrcicts = useRecoilValue(districtAtom);
  const wards = useRecoilValue(wardsAtom);
  const [room, setRoom] = useState<Room | undefined>();
  console.log(room);

  const { id } = useParams();

  useEffect(() => {
    (async () => {
      const { data } = await api.get(`/rooms/${id}`);
      setRoom(data);
      countView(Number(id), data.view + 1);
    })();
  }, []);

  if (!room) return <>Loading...</>;

  return (
    <MainLayout>
      <h3 className='text-cyan-500 text-3xl font-bold mb-6'>{room?.title}</h3>
      <div className='flex items-center gap-10'>
        <div className='flex items-center gap-3'>
          <EyeFilled />
          <span> Lượt xem: {room?.view}</span>
        </div>
        <div className='flex items-center gap-3'>
          <CalendarFilled />
          <span>Ngày đăng: {formatDate(room?.create_at || '')}</span>
        </div>
      </div>
      <div className='grid grid-cols-2 mt-16 gap-4'>
        <div>
          <div>{room?.description}</div>
          <Descriptions
            className='mt-12'
            bordered
            title='Thông tin chi tiết'
            column={1}
          >
            <Descriptions.Item label='Quận/Huyện'>
              {distrcicts[room.districtId].name}
            </Descriptions.Item>
            <Descriptions.Item label='Xã/Phường'>
              {wards[room.wardId].name}
            </Descriptions.Item>
            <Descriptions.Item label='Giá'>
              {Intl.NumberFormat('vi-VI', {
                style: 'currency',
                currency: 'VND',
              }).format(room.price)}
            </Descriptions.Item>
            <Descriptions.Item label='Diện tích'>
              {room.area} m²
            </Descriptions.Item>
          </Descriptions>
        </div>
        <div className='aspect-video'>
          <Carousel autoplay draggable autoplaySpeed={1000} dots infinite>
            {room &&
              room.images.split('|').map((url: string) => (
                <div key={url}>
                  <img
                    className='w-full h-full object-cover'
                    src={`${env.SERVER_URL}/${url}`}
                  />
                </div>
              ))}
          </Carousel>
        </div>
      </div>
    </MainLayout>
  );
};

export default RoomDetail;
