/*
Created		3/9/2021
Modified		3/9/2021
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/


Create table [KHACHHANG]
(
	[MaKH] Integer Identity NOT NULL,
	[TenKH] Nvarchar(30) Identity NOT NULL,
Primary Key ([MaKH])
) 
go

Create table [HANG]
(
	[MaHang] Integer Identity NOT NULL,
	[TenHang] Nvarchar(30) NOT NULL,
Primary Key ([MaHang])
) 
go

Create table [HOADON]
(
	[SoHD] Integer Identity NOT NULL,
	[MaKH] Integer NOT NULL,
	[Ngay] Datetime Default get date() NULL,
Primary Key ([SoHD])
) 
go

Create table [CHITIETHOADON]
(
	[SoHD] Integer NOT NULL,
	[MaHang] Integer NOT NULL,
	[SoLuong] Integer NULL,
Primary Key ([SoHD],[MaHang])
) 
go


Alter table [HOADON] add  foreign key([MaKH]) references [KHACHHANG] ([MaKH])  on update no action on delete no action 
go
Alter table [CHITIETHOADON] add  foreign key([MaHang]) references [HANG] ([MaHang])  on update no action on delete no action 
go
Alter table [CHITIETHOADON] add  foreign key([SoHD]) references [HOADON] ([SoHD])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


