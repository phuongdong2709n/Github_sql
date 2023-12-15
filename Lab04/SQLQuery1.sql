USE master;
GO

CREATE DATABASE Lab_04 ON
(NAME = Lab04_data,
    FILENAME = 'E:\DEV_SQL\lesson04\Lab04\Lab04_data.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5)
LOG ON
(NAME = Lab04_log,
    FILENAME = 'E:\DEV_SQL\lesson04\Lab04\Lab04_log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 25 MB,
    FILEGROWTH = 5 MB);
GO

use [Lab_04]
go

/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO

--1. Cho biết danh sách các môn học, gồm các thông tin sau: Mã môn học, Tên môn  học, Số tiết.  
select MaMH, TenMH, Sotiet from MonHoc 
go
--2.
select MaSV, HoSV, TenSV,  HocBong
from SinhVien
order by MaSV ASC
--3.
select MaSV, HoSV, TenSV, NgaySinh, MaKH, HocBong
from SinhVien
order by TenSV asc
--4.
select MaSV, HoSV +''+ TenSV as 'Họ tên sinh viên',  NgaySinh, HocBong
from SinhVien
order by NgaySinh asc , HocBong DESC
go
--5.
select MaMH, TenMH, Sotiet from MonHoc where TenMH like N'T%' 
go
--6.
select MaSV, HoSV +''+ TenSV as 'Họ tên sinh viên', Phai, NgaySinh
from SinhVien
where TenSV like N'%i'
go
--7.
select * from Khoa where TenKH like N'N%'
go
--8.
select MaSV, HoSV , TenSV , Phai from SinhVien where HoSV like N'%Thị%'
go
--9.
select MaSV, HoSV +''+ TenSV as 'Họ tên sinh viên', Phai, HocBong
from SinhVien
where TenSV LIKE N'[a-m]%'
 go
 --10.
 select MaSV, HoSV +''+ TenSV as 'Họ tên sinh viên', Phai, HocBong
from SinhVien
where TenSV LIKE N'[a-m]%'
order by TenSV asc
 go
 --11.
 select * from Khoa where TenKH = 'Anh Văn' 
 go
 --12.
 select MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH
 from SinhVien
 where MaKH='VL'
 order by NgaySinh desc
go
--13.
select * 
from SinhVien
where HocBong>500000
order by MaKH desc
go
--14.
select  HoSV, TenSV,  CONVERT(VARCHAR(10),NgaySinh,103) as 'Ngày sinh', NoiSinh,HocBong
from SinhVien
where NgaySinh = '1987/12/20'

--15
select MaSV, HoSV +''+ TenSV as 'Họ tên sinh viên', CONVERT(varchar(12), NgaySinh,103) as 'ngày sinh', HocBong
from SinhVien
where NgaySinh='1988/10/18'
order by HocBong desc
go
--16.
select HoSV +''+ TenSV as 'Họ tên sinh viên' , MaKH, NoiSinh, HocBong
from SinhVien
where NoiSinh='Tp. HCM' and HocBong>10000
go
--17.
select * 
from Khoa
where TenKH='Anh Văn' or TenKH='Triết' 
go
---18.
select MaSV,CONVERT(varchar(12),NgaySinh,103) as 'Ngày sinh', NoiSinh, HocBong
from SinhVien
where NgaySinh >= '1986/01/01' and NgaySinh<= '1992/06/05'
go
--19
select MaSV, NgaySinh as 'ngày sinh', Phai, HocBong
from SinhVien
where HocBong between 20000 and 100000
go
--20.
select *
from MonHoc
where Sotiet between 40 and 60
go
--21.
select MaSV, HoSV, TenSV, Phai= case
									when Phai=1 then N'Nam'
									when Phai=0 then N'Nữ'
									else N'khác'
								end				
,MaKH
from SinhVien
go
--22.
select HoSV +''+ TenSV as 'Họ tên sinh viên', Phai,CONVERT(varchar(10), NgaySinh,103) as 'Ngày sinh', NoiSinh
from SinhVien
where NgaySinh>= '1990/01/01' 
go
--23.
select *
from SinhVien
where TenSV like N'N%'
go
--24.
select MaSV, HoSV, TenSV, Phai,CONVERT(varchar(10),NgaySinh,103) as 'Ngày sinh', MaKH
from SinhVien
where NgaySinh >= '1986/05/30' and MaKH='TH'
go
--25.
select MaSV, HoSV, TenSV, Phai = case
									when Phai=1 then N'Nam'
									when Phai=0 then N'Nữ'
									else N'Khác'
								end
, NgaySinh, NoiSinh, MaKH, HocBong, DiemTrungBinh
from SinhVien
go
/*
--26.Cho biết danh sách sinh viên gồm các thôngtin sau: Mã sinh viên, Tuổi, Nơi sinh,  Mã khoa.
	Trong đó Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm  sinh  
	-- Hàm DATEDIFF tính toán sự chênh lệch về số năm giữa ngày hiện tại (GETDATE()) và ngày sinh (NgaySinh).
		Với đơn vị là YEAR, nó sẽ trả về số năm giữa hai ngày
*/
select MaSV, HoSV, TenSV, Phai,DATEDIFF(year, NgaySinh,GETDATE()) as 'Tuổi'
from SinhVien
go
--27. Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên,  Tuổi, Học bổng  
select MaSV, HoSV, TenSV,DATEDIFF(year, NgaySinh,getdate()) as 'tuổi', MaKH, HocBong 
from SinhVien
where DATEDIFF(year, NgaySinh,getdate()) >30
go
--28. Danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm: Họ tên sinh  viên, Tuổi, Tên khoa 
select HoSV +''+ TenSV as 'họ tên sinh viên', DATEDIFF(year, NgaySinh,GETDATE()) as 'Tuổi' ,  MaKH as 'Tên khoa'
from SinhVien 
where DATEDIFF(year, NgaySinh,GETDATE()) between 20 and 30
go


--=======BÀI 2===========
--1.
select HoSV +''+ TenSV as 'Họ và tên sinh viên', Phai =case
														when Phai=1 then N'Nam'
														when Phai=0 then N'Nữ'
														else N'Khác'
														end
,DATEDIFF(year, NgaySinh,GETDATE()) as 'Tuổi', MaKH as 'Mã Khoa'
from SinhVien
order by DATEDIFF(year, NgaySinh,GETDATE()) desc
go
--2. Danh sách sinh viên sinh vào tháng 2 năm 1994, gồm các thông tin: Họ tên sinh  viên, Phái, Ngày sinh. Trong đó, Ngày sinh chỉ lấy giá trị ngày của trường  NGAYSINH.  
select HoSV +''+ TenSV as 'Họ tên sinh viên', Phai, NgaySinh as 'Ngày sinh'
from SinhVien
where YEAR(NgaySinh)=1994 and MONTH(NgaySinh)=2
go
--3. 
select *
from SinhVien
order by NgaySinh desc
go
--4.
select MaSV as 'Mã sinh viên',Phai as 'giới tính', case 
							when HocBong>500000 then N'Học bổng cao'
							when HocBong<= 500000 then N'Học bổng trung bình'
							else N'mức học bổng  '
						end 
						as 'Học bổng'
from SinhVien
go
--5.
select HoSV +''+ TenSV as 'Họ tên sinh viên', MaKH as 'Mã môn học',DiemTrungBinh
from SinhVien
order by TenSV, HoSV, MaKH asc
--6.
select HoSV +''+ TenSV as 'Họ và tên sinh viên',  case
														when Phai=1 then N'Nam'
														when Phai=0 then N'Nữ'
														else N'Khác'
														end
as 'Giới tính'
,
MaKH as 'Mã Khoa' 
from SinhVien
where MaKH = 'AV'
go

--7.
--cách 2:
 SELECT    Khoa.MaKH, Khoa.TenKH as 'Tên khoa', MonHoc.Sotiet, SinhVien.MaSV , SinhVien.HoSV +''+ SinhVien.TenSV as 'Họ tên sinh viên', MonHoc.TenMH as 'Tên môn học'
FROM         Khoa INNER JOIN
                      SinhVien ON Khoa.MaKH = SinhVien.MaKH CROSS JOIN
                      MonHoc

--
SELECT Khoa.TenKH AS 'Tên khoa',
       SinhVien.HoSV AS 'Họ tên sinh viên',
       MonHoc.TenMH AS 'Tên môn học',
       MonHoc.SoTiet AS 'Số tiết',
       Ketqua.Diem AS 'Điểm'
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH

--8.
 ALTER TABLE Ketqua
 ADD Loai nvarchar(20)
 go

 select S.MaSV, HoSV, TenSV, MaKH, DiemTrungBinh ,  
 case 
 when k.Diem >8 then N'Giỏi'
  when 6<=k.Diem and k.Diem<=8 then N'Khá'
   when k.Diem<6 then N'Trung bình'
end 
as 'Loại'
 from SinhVien as S
 join Ketqua as k on k.MaSV=s.MaSV
 go

--==========BÀI 3=========
--1.


