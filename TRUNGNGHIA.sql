﻿		/*Tạo Bảng*/
--create database QUANLIBANHANG
 --use QUANLIBANHANG
 --create table KHACHHANG (
 -- maKH varchar (10) NOT NULL primary key,
 -- tenKH nvarchar (30),
 -- diachi nvarchar (50),
 -- dt varchar (30),
 -- EMAIL varchar(30),
 --);

-- create table HOADON(
--MAHD varchar (10) not null PRIMARY KEY,
--NGAY date check (NGAY<GETDATE()), 
--MAKH varchar (10),
--TONGTG float,
--);
--create table CTDH (
--MAHD varchar (10),
--MAVT varchar (10),
--SL int check (SL > 0),
--KHUYENMAI float,
--GIABAN float
--constraint PK_CTDH primary key (MAHD,MAVT)
--);
 --create table VATTU(
 --MAVT varchar(10),
 --TENVT Nvarchar(30),
 --DVT Nvarchar(20),
 --GIAMUA Money check(GIAMUA > 0),
 --SLTON int
 --)

--	/* Nhập dữ liệu */

--/*Vật tư*/
--INSERT INTO VATTU VALUES ('VT01',N'Xi măng',N'Bao',50000,5000)
--INSERT INTO VATTU VALUES ('VT02',N'Cát',N'khối',45000,50000)
--INSERT INTO VATTU VALUES ('VT03',N'Gạch ống',N'Viên',120,80000)
--INSERT INTO VATTU VALUES ('VT04',N'Gạch thẻ',N'Viên',110,80000)
--INSERT INTO VATTU VALUES ('VT05',N'Đá lớn',N'Khối',25000,1000)
--INSERT INTO VATTU VALUES ('VT05',N'Đá nhỏ',N'Khối',33000,5000)
--INSERT INTO VATTU VALUES ('VT05',N'Lam gió',N'Cái',15000,10000)

--/*Khách hàng*/
--INSERT INTO KHACHHANG VALUES ('KH01',N'Nguyễn Thị Bé',N'Tân Bình',0913457895,bnt@yahoo.com)
--INSERT INTO KHACHHANG VALUES ('KH02',N'Lê Hoàng Nam',N'Bình Chánh',0939878987,namlehoang@gmail.com)
--INSERT INTO KHACHHANG VALUES ('KH03',N'Trần Thị Chiêu',N'Tân Bình',0738457895,NULL)
--INSERT INTO KHACHHANG VALUES ('KH04',N'Mai Thị Quế Anh',N'Bình Chánh',NULL,NULL)
--INSERT INTO KHACHHANG VALUES ('KH05',N'Lê Văn Sáng ',N'Quận 10',NULL,sanglv@hcm.vnn.vn)
--INSERT INTO KHACHHANG VALUES ('KH06',N'Trần Hoàng ',N'Tân Bình',0903457897 ,NULL)

--/*Hóa Đơn*/

--iNSERT INTO HOADON VALUES ('HD001', 05/12/2010, 'KH01', NULL)
--iNSERT INTO HOADON VALUES ('HD002', 05/25/2010, 'KH02', NULL)
--iNSERT INTO HOADON VALUES ('HD003', 05/25/2010, 'KH01', NULL)
--iNSERT INTO HOADON VALUES ('HD004', 05/25/2010, 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD005', 05/26/2010, 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD006', 06/02/2010, 'KH03', NULL)
--iNSERT INTO HOADON VALUES ('HD007', 06/02/2010, 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD008', 06/02/2010, 'KH03', NULL)
--iNSERT INTO HOADON VALUES ('HD009', 06/02/2010, 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD010', 06/02/2010, 'KH01', NULL)

--/*CTHD*/

--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTHD VALUES ('HD001', 'VT01', 5, NULL, 52000)


USE TRUNGNGHIA