create database Tuan5_Nhom6_124TCSDL204
use Tuan5_Nhom6_124TCSDL204
create table KHACHHANG
(
	MAKHACHHANG char(10) primary key,
	TENCONGTY nvarchar(50),
	TENGIAODICH nvarchar(50),
	DIACHI nvarchar(50),
	EMAIL varchar(100) unique,
	DIENTHOAI varchar(11) unique,
	FAX varchar(10) unique, 
)
