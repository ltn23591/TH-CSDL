		/*Tạo Bảng*/
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
-- create table VATTU(
-- MAVT varchar(10),
-- TENVT Nvarchar(30),
-- DVT Nvarchar(20),
-- GIAMUA Money check(GIAMUA > 0),
-- SLTON int
-- )

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
--INSERT INTO KHACHHANG VALUES ('KH01',N'Nguyễn Thị Bé',N'Tân Bình',0913457895, 'bnt@yahoo.com')
--INSERT INTO KHACHHANG VALUES ('KH02',N'Lê Hoàng Nam',N'Bình Chánh',0939878987,'namlehoang@gmail.com')
--INSERT INTO KHACHHANG VALUES ('KH03',N'Trần Thị Chiêu',N'Tân Bình',0738457895,NULL)
--INSERT INTO KHACHHANG VALUES ('KH04',N'Mai Thị Quế Anh',N'Bình Chánh',NULL,NULL)
--INSERT INTO KHACHHANG VALUES ('KH05',N'Lê Văn Sáng ',N'Quận 10',NULL,'sanglv@hcm.vnn.vn')
--INSERT INTO KHACHHANG VALUES ('KH06',N'Trần Hoàng ',N'Tân Bình',0903457897 ,NULL)

--/*Hóa Đơn*/

--iNSERT INTO HOADON VALUES ('HD001', '05/12/2010', 'KH01', NULL)
--iNSERT INTO HOADON VALUES ('HD002', '05/25/2010', 'KH02', NULL)
--iNSERT INTO HOADON VALUES ('HD003', '05/25/2010', 'KH01', NULL)
--iNSERT INTO HOADON VALUES ('HD004', '05/25/2010', 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD005', '05/26/2010', 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD006', '06/02/2010', 'KH03', NULL)
--iNSERT INTO HOADON VALUES ('HD007', '06/22/2010', 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD008', '06/25/2010', 'KH03', NULL)
--iNSERT INTO HOADON VALUES ('HD009', '08/15/2010', 'KH04', NULL)
--iNSERT INTO HOADON VALUES ('HD010', '09/30/2010', 'KH01', NULL)

--/*CTHD*/

--INSERT INTO CTDH VALUES ('HD001', 'VT01', 5, NULL, 52000)
--INSERT INTO CTDH VALUES ('HD001', 'VT05', 10, NULL, 30000)
--INSERT INTO CTDH VALUES ('HD002', 'VT03', 10000, NULL, 150)
--INSERT INTO CTDH VALUES ('HD003', 'VT02', 20, NULL, 55000)
--INSERT INTO CTDH VALUES ('HD004', 'VT03', 50000, NULL, 150)
--INSERT INTO CTDH VALUES ('HD004', 'VT04', 20000, NULL, 120)
--INSERT INTO CTDH VALUES ('HD005', 'VT05', 10, NULL, 30000)
--INSERT INTO CTDH VALUES ('HD005', 'VT06', 15, NULL, 35000)
--INSERT INTO CTDH VALUES ('HD005', 'VT07', 20, NULL, 17000)
--INSERT INTO CTDH VALUES ('HD006', 'VT04', 10000, NULL, 120)
--INSERT INTO CTDH VALUES ('HD007', 'VT04', 20000, NULL, 125)
--INSERT INTO CTDH VALUES ('HD008', 'VT01', 100, NULL, 55000)
--INSERT INTO CTDH VALUES ('HD008', 'VT02', 20, NULL, 47000)
--INSERT INTO CTDH VALUES ('HD009', 'VT02', 25, NULL, 48000)
--INSERT INTO CTDH VALUES ('HD010', 'VT01', 25, NULL, 57000)


/*---TRUY VẤN---*/
--1.Hiển thị danh sách các khách hàng có địa chỉ là “Tân Bình” gồm mã khách hàng, tên khách hàng, địa chỉ, điện thoại, và địa chỉ E-mail.
   SELECT * FROM KHACHHANG WHERE DIACHI=N'TÂN BÌNH'
--2.	Hiển thị danh sách các khách hàng gồm các thông tin mã khách hàng, tên khách hàng, địa chỉ và địa chỉ E-mail của những khách hàng chưa có số điện thoại.
SELECT * FROM KHACHHANG WHERE DT IS  NULL
--4.	Hiển thị danh sách các khách hàng đã có số điện thoại và địa chỉ E-mail gồm mã khách hàng, tên khách hàng, địa chỉ, điện thoại, và địa chỉ E-mail.
SELECT * FROM KHACHHANG WHERE DT IS NOT NULL AND EMAIL IS NOT NULL
--5.	Hiển thị danh sách các vật tư có đơn vị tính là “Cái” gồm mã vật tư, tên vật tư và giá mua.
SELECT * FROM VATTU WHERE DVT = N'Cái'
--6.	Hiển thị danh sách các vật tư gồm mã vật tư, tên vật tư, đơn vị tính và giá mua mà có giá mua trên 25000.
SELECT * FROM VATTU WHERE GIAMUA > 25000
--7.	Hiển thị danh sách các vật tư là “Gạch” (bao gồm các loại gạch) gồm mã vật tư, tên vật tư, đơn vị tính và giá mua.
SELECT * FROM VATTU WHERE TENVT LIKE N'GẠCH%'
--9.	Lấy ra các thông tin gồm Mã hóa đơn, ngày lập hóa đơn, tên khách hàng, địa chỉ khách hàng và số điện thoại.	
SELECT MAHD,NGAY,TENKH,DIACHI,DT
	FROM KHACHHANG K,HOADON H
	WHERE K.MAKH=H.MAKH
--10. Lấy ra các thông tin gồm Mã hóa đơn, tên khách hàng, địa chỉ khách hàng và số điện thoại của ngày 25/5/2010
SELECT MAHD, TENKH, DIACHI, DT 
FROM HOADON HD, KHACHHANG KH 
WHERE KH.MAKH = HD.MAKH AND NGAY='05/25/2010'

--11. Lấy ra các thông tin gồm Mã hóa đơn, ngày lập hóa đơn, tên khách hàng, địa chỉ khách hàng và số điện thoại của những hóa đơn trong tháng 6/2010.--
SELECT MAHD, TENKH, DIACHI, DT 
FROM HOADON HD, KHACHHANG KH 
WHERE KH.MAKH = HD.MAKH AND MONTH(NGAY)= 06 AND YEAR ( NGAY ) = 2010
--12. Lấy ra danh sách những khách hàng (tên khách hàng, địa chỉ, số điện thoại) đã mua hàng trong tháng 6/2010.--
--17. Tìm ra những mặt hàng chưa bán được
	SELECT * 
	FROM VATTU
	WHERE MAVT NOT IN (
	SELECT DISTINCT MAVT
	FROM CTDH)

	--18. --

	SELECT H.MAHD, NGAY,TENKH, DIACHI, DT, TENVT, DVT, GIAMUA, GIABAN,SL,TRIGIAMUA=SL*GIAMUA,TRIGIABAN=SL*GIABAN
	FROM VATTU V, CTDH C, HOADON H, KHACHHANG K
	WHERE V.MAVT = C.MAVT AND C.MAHD = H.MAHD AND H.MAKH = K.MAKH

	--19
		SELECT H.MAHD, NGAY,TENKH, DIACHI, DT, TENVT, DVT, GIAMUA, GIABAN,SL,TRIGIAMUA=SL*GIAMUA,TRIGIABAN=SL*GIABAN
	FROM VATTU V, CTDH C, HOADON H, KHACHHANG K
	WHERE V.MAVT = C.MAVT AND C.MAHD = H.MAHD AND H.MAKH = K.MAKH AND MONTH(NGAY) = 5 AND YEAR(NGAY) = 2010