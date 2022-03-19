Create database TIMNGUOIOGHEP
Use TIMNGUOIOGHEP
Create table TAIKHOAN
(
	MaTaiKhoan varchar(20) primary key,
	TenDangNhap nvarchar(100),
	MatKhau nvarchar(100) not null default 0
)
Create table DANGKY
(
	Ho nvarchar(50),
	Ten nvarchar(50),
	TenDangNhap varchar(50),
	MatKhau varchar(50),
	NhapLaiMatKhau varchar(50),
	GioiTinh varchar(10),
	SoDienThoai varchar(10),
	Email varchar(50)
)

create table NGUOIDUNG 
(
	MaNguoiDung varchar(20),
	MaTaiKhoan varchar(20),
	HoTen nvarchar(50),
	SDT varchar(20),
	Email varchar(50),
	NgaySinh date,
	LinkFB nvarchar(50),
	primary key(MaNguoiDung),
	Foreign key(MaTaiKhoan) references TAIKHOAN(MaTaiKhoan)

)
Create table THONGTINTRO
(
	MaTin varchar(20),
	MaNguoiDung varchar(20),
	TieuDe nvarchar (200),
	Anh nvarchar (200),
	DiaChi nvarchar (100),
	DienTich int, 
	Gia int, 
	TimNguoiOGhep nvarchar (10), 
	MoTa nvarchar (200),
	ThoiGianDangTin date,
	primary key (MaTin),
	Foreign key(MaNguoiDung) references NGUOIDUNG(MaNguoiDung)
)
