create database QuanLyDatVeMayBay
go
use QuanLyDatVeMayBay
go
create table ChuyenBay(
	MaCB	char(20)	not null,
	MaSanBayDi	char(20),
	MaSanBayDen	char(20),
	Ngay	nvarchar(50),
	ThoiGianBay	int,
	SoLuongGheKhoang1	int,
	SoLuongGheKhoang2	int,
	SoLuongGheKhoang3	int	
)
go

create table HangVe(
	MaHV	char(20)	not null,
	TenHV	nvarchar(50)
)
go 
create table KhachHang(
	MaKH	char(20) not null,
	TenKH	nvarchar(20),
	NgaySinh	nvarchar(50),
	GioiTinh	nvarchar(10),
	CMND	nvarchar(50),
	DienThoai nvarchar(50),
	DiaChi	nvarchar(50)

)
go
create table NhanVien(
	MaNV	char(20)	not null,
	TenNV	nvarchar(20),
	NgaySinh	nvarchar(50),
	GioiTinh	nvarchar(10),
	ViTri nvarchar(50),
	DienThoai	int,
	DiaChi	nvarchar(50)
)
go
create table SanBay(
	MaSB	char(20)	not null,
	TenSB	nvarchar(50)
)
go
create table TuyenBay(
	MaTB	char(20)	not null,
	TenTB	nvarchar(100),
	MaSanBayDi	char(20),
	MaSanBayDen	char(20)
)
go
create table DatCho(
	MaPhieu	char(20)	not null,
	MaKH	char(20),
	MaCB	char(20),
	MATB	char(20),
	MaHV	char(20),
	SoGheDat	int,
	NgayDat		nvarchar(50),
	GiaTien		int,
	ThanhTien int


)
go
alter table ChuyenBay add constraint PK_MaCB primary key(MaCB)
go
alter table HangVe add constraint PK_MaHV primary key(MaHV)
go
alter table SanBay add constraint PK_MaSB primary key(MaSB)
go
alter table TuyenBay add constraint PK_MaSP primary key(MaTB)
go
alter table NhanVien add constraint PK_MaNV primary key(MaNV)
go
alter table KhachHang add constraint PK_MaKH primary key(MaKH)
go
alter table DatCho add constraint PK_MaPhieu primary key(MaPhieu)
go
alter table DatCho add constraint fk_MKH foreign key(MaKH) references KhachHang(MaKH)
go
alter table DatCho add constraint fk_MCB foreign key(MaCB) references ChuyenBay(MaCB)
go
alter table DatCho add constraint fk_MTB foreign key(MaTB) references TuyenBay(MaTB)
go
alter table DatCho add constraint fk_MHV foreign key(MaHV) references HangVe(MaHV)
go

insert into KhachHang values
('KH01', N'Vũ Đình Hiệp', '09/11/2002', N'Nam', '20000000000', '0705608583', N'Quảng Ninh'),
('KH02', N'Phạm Ngọc Hải', '08/11/2002', N'Nữ', '10000000000', '0701234567', N'Hà Nội'),
('KH03', N'Nguyễn Quốc Hưng', '07/11/2002', N'Nữ', '15000000000','01234567', N'Quảng Ninh')
go
insert into HangVe values
('HVA', N'Hạng Vé A'),
('HVB', N'Hạng Vé B'),
('HVC', N'Hạng Vé C')
go
insert into SanBay values
('BMT', N'Buôn Ma Thuột'),
('CM', N'Cà Mau'),
('CR', N'Cam Ranh'),
('DN ', N'Đà Nẵng'),
('DBP', N'Điện Biên Phủ'),
('LK', N'Liên Khương'),
('NB', N'Nội Bài'),
('CB', N'Cát Bi'),
('PB', N'Phú Bài'),
('PQ', N'Phú Quốc'),
('PL', N'Pleiku'),
('TSN', N'Tân Sơn Nhất'),
('CT', N'Cần Thơ'),
('CD', N'Côn Đảo'),
('VD', N'Vân Đồn')
go
insert into TuyenBay values
('BMT-CM',N'Buôn Ma Thuột - Cà Mau', 'BMT', 'CM'),
('CT-CD',N'Cần Thơ - Côn Đảo', 'CT', 'CD'),
('CD-VD',N'Côn Đảo - Vân Đồn', 'CD', 'VD')
go
insert into ChuyenBay values 
('CB001', 'CD', 'VD', '10/04/2021', 2, 50, 50, 40)
go

insert into DatCho values
('VJ001', 'KH01','CB001', 'CT-CD', 'HVA', 1, '11/04/2021', 1500000, 3000000)
go
insert into NhanVien values
('NV01', N'Phạm Ngọc Hải', '10/03/1999', N'Nữ',N'Cơ Trưởng', '012345678', N'Hà Nội'),
('NV02', N'Nguyễn Quốc Hưng', '10/03/1999', N'Nữ',N'Phó Cơ Trưởng', '012345678', N'Quảng Ninh')