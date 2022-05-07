import {
  CheckCircleTwoTone,
  CloseCircleTwoTone,
  DeleteTwoTone,
  EditTwoTone,
} from '@ant-design/icons';
import { Button, message, Table, Tag } from 'antd';
import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useRecoilValue } from 'recoil';

import { api } from '~/configs/axios';
import { useFormatDate, useRoomInfo } from '~/hooks';
import { MainLayout } from '~/layouts';
import { districtAtom, Room, userAtom } from '~/recoil/state';

const RoomManage = () => {
  const [isLoading, setIsLoading] = useState(false);
  const { rooms, fetchRoom } = useRoomInfo();

  const user = useRecoilValue(userAtom);
  const navigate = useNavigate();
  const formatDate = useFormatDate();
  const districts = useRecoilValue(districtAtom);

  const onDeleteRoom = async (id: number) => {
    try {
      await api.delete(`/rooms/${id}`);
      message.success('Xóa thành công');
      fetchRoom();
    } catch (error: any) {
      message.error(error.message);
    }
  };

  if (!user) return <MainLayout>Login first</MainLayout>;

  const handleToggleStatus = async (roomId: number, status: string) => {
    try {
      setIsLoading(true);
      await api.patch(`/rooms/${roomId}`, { status });
      fetchRoom();
      setIsLoading(false);
    } catch (error) {
      console.log(error);
    }
  };

  const columns = [
    {
      title: 'Tiêu đề',
      dataIndex: 'title',
      key: 'title',
    },
    {
      title: 'Trạng thái',
      dataIndex: 'status',
      render: (text: string) => (
        <Tag color={text === 'WAIT' ? 'orange' : 'green'}>
          {text === 'WAIT' ? 'Đang đợi duyệt' : 'Đã duyệt'}
        </Tag>
      ),
      key: 'status',
    },
    {
      title: 'Quận/Huyện',
      dataIndex: 'districtId',
      render: (_districtId: number) =>
        districts.find((e) => e.id === _districtId)?.name,
      key: 'districtId',
    },
    {
      title: 'Ngày đăng',
      render: (_text: string) => formatDate(_text),
      key: 'create_at',
    },
    {
      title: 'Hành động',
      render: (_text: any, record: Room) => {
        return (
          <div className='flex gap-4'>
            {user.role === 'ADMIN' && (
              <Button
                disabled={isLoading}
                className={`rounded-md ${
                  record.status === 'WAIT'
                    ? 'hover:text-green-500 hover:border-green-500'
                    : 'hover:text-orange-500 hover:border-orange-500'
                } `}
                onClick={() =>
                  handleToggleStatus(
                    record.id,
                    record.status === 'WAIT' ? 'ACTIVE' : 'WAIT'
                  )
                }
              >
                {isLoading ? (
                  'Loading...'
                ) : record.status === 'WAIT' ? (
                  <div className='flex items-center gap-2'>
                    <CheckCircleTwoTone twoToneColor='green' />
                    Duyệt bài
                  </div>
                ) : (
                  <div className='flex items-center gap-2'>
                    <CloseCircleTwoTone twoToneColor='orange' />
                    Ẩn bài
                  </div>
                )}
              </Button>
            )}
            <Button
              className='flex items-center rounded-md'
              onClick={() => navigate(`/me/rooms/edit/${record.id}`)}
            >
              <EditTwoTone />
              Sửa
            </Button>
            <Button
              className='flex items-center rounded-md hover:text-red-500 hover:border-red-500'
              onClick={() => onDeleteRoom(record.id)}
            >
              <DeleteTwoTone twoToneColor='red' />
              Xóa
            </Button>
          </div>
        );
      },
    },
  ];

  const tableData =
    user.role === 'ADMIN'
      ? rooms
      : rooms.filter((room) => room.userId === user.id);

  return (
    <MainLayout>
      <Button className='mb-4 bg-blue-400 text-white border-0 hover:border'>
        <Link to='/me/rooms/create'>Tạo tin mới</Link>
      </Button>
      <Table
        dataSource={tableData}
        columns={columns}
        pagination={{ pageSize: 10 }}
      />
    </MainLayout>
  );
};

export default RoomManage;
