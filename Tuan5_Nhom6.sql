create database QLBH_2323;
GO
use QLBH_2323;
GO
-- Bảng Dondathang_hoadon--
  create table DonDatHang_HoaDon
 (
	maDH varchar(20) primary key not null,
	ngaytaoDH date null,
	dcGiaoHang nvarchar(50) unique ,
	SDTGiaoHang varchar(30),
	maHDdientu varchar(15),
	ngayThanhToan date null,
	ngayGiaoHang date  null,
	trangthaiDonHang nvarchar(30),
);
		--Bảng KhachHang--
create table KhachHang
 (
	maKH varchar(20) primary key not null,
	tenKH nvarchar(30),
	diachiKH nvarchar(40),
	SDT varchar(15),
	Email varchar(40),
	soDuTaiKhoan money,
);
		--Bảng NhanVien--
create table NhanVien 
(
	maNV varchar(20) primary key not null ,
	tenNV nvarchar(30),
	SDT varchar(15),
	Email varchar(40),
	gioiTinh bit,
	doB date,
	Salary money,
);
		--Bảng SanPham--
create table SanPham
 (
	maSP varchar(20) primary key not null ,
	tenSP nvarchar(30),
	donGiaBan money,
	soLuongHienCon bigint,
	soLuongCanDuoi smallint,
);
		--Bảng ChiTietDonHang--
create table ChiTietDonHang  
(
	maDH varchar(20),
	maSP varchar(20),
	soLuongDat int,
	donGia money,
	primary key (maDH,maSP),
	constraint FK_DonDatHang_HoaDon foreign key (maDH) references DonDatHang_HoaDon(maDH),
	constraint FK_SanPham foreign key (maSP) References SanPham(maSP),
);
		--Bảng PhieuNhap--
	create table PhieuNhap  
(
	maPN CHAR(7) primary key not null,
	ngayNhapHang date,
);
		--Bảng ChiTietPhieuNhap--
create table ChiTietPhieuNhap 
(
	maPN char(7),
	maSP varchar(20),
	soLuongNhap int,
	giaNhap money,
	primary key (maPN,maSP),
	constraint FK_SanPham2 foreign key (maSP) references SanPham(maSP),
	constraint FK_PhieuNhap foreign key (maPN) References PhieuNhap(maPN),
);
		--Bảng NhaCungCap--
create table NhaCungCap
 (
	maNCC varchar(20) primary key not null,
	tenNCC nvarchar(15),
	diaChiNCC nvarchar(40),
	SDT varchar(15),
	nhanVienLienHe nvarchar(30),
);