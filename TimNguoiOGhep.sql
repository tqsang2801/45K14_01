Create database TIMNGUOIOGHEP
Use TIMNGUOIOGHEP
Create table TAIKHOAN
(
	TenDangNhap varchar(50) primary key,
	MatKhau varchar(50) not null default 0
)

Insert into TAIKHOAN(TenDangNhap, MatKhau)
values ('admin', 'admin'),
		('nhom1', '12345')
Select * from TAIKHOAN
Create proc sp_Login @username varchar(100), @password varchar(100)
As 
Begin
	select * from TAIKHOAN where TenDangNhap = @username And MatKhau = @password
End

create table NGUOIDUNG 
(
	MaNguoiDung varchar(20),
	TenDangNhap varchar(50),
	HoTen nvarchar(50),
	SDT varchar(20),
	Email varchar(50),
	NgaySinh date,
	GioiTinh nvarchar(10),
	DiaChi nvarchar(200),
	LinkFB nvarchar(50),
	primary key(MaNguoiDung),
	Foreign key(TenDangNhap) references TAIKHOAN(TenDangNhap)

)

Create table THONGTINTRO
(
	MaTin varchar(20),
	MaNguoiDung varchar(20),
	MaHuyen varchar(10),
	TieuDe nvarchar (200),
	Anh nvarchar (200),
	DiaChi nvarchar (200),
	DienTich int, 
	Gia int, 
	TenNguoiDang nvarchar(50),
	SDT varchar(20),
	TimNguoiOGhep nvarchar (10), 
	MoTa nvarchar (200),
	ThoiGianDangTin date,
	primary key (MaTin),
	Foreign key(MaNguoiDung) references NGUOIDUNG(MaNguoiDung),
	Foreign key(MaHuyen) references HUYEN(MaHuyen)
)

Create table HUYEN
(
	MaHuyen varchar(10),
	TenHuyen nvarchar(100),
	MaTinh varchar(10),
	primary key (MaHuyen),
	Foreign key(MaTinh) references TINH(MaTinh)
)

Create table TINH
(
	MaTinh varchar(10),
	TenTinh nvarchar(100),
	primary key (MaTinh)
)