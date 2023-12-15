

USE master;
GO

CREATE DATABASE Lab_02 ON
(NAME = Lab02_data,
    FILENAME = 'E:\DEV_SQL\LESSON3\Lab02\Lab02_data.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5)
LOG ON
(NAME = Lab02_log,
    FILENAME = 'E:\DEV_SQL\LESSON3\Lab02\Lab02_log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 25 MB,
    FILEGROWTH = 5 MB);
GO
use [Lab_02]
go
--1.
DECLARE @name NVARCHAR(50) -- Khai báo biến name 
SET @name = 'John Doe' -- Gán giá trị 
SELECT @name -- In ra giá trị của biến name
--2.
DECLARE @age int 
SET @age = 25
SELECT @age 
--3.
create table Employee
(
	ID INT CONSTRAINT PK_Employee PRIMARY KEY
	,FULLNAME NVARCHAR(50)
	,GENDER BIT
	,BIRTHDAY DATETIME
	,ADDRESS NVARCHAR(MAX)
	,EMAIL VARCHAR(20)
	,SALARY FLOAT
)
GO
--
ALTER TABLE Employee
	ADD PHONE VARCHAR(20)
GO
--
-- datetime :  'YYYY-MM-DD HH:MI:SS'
INSERT INTO  Employee(ID,FULLNAME,GENDER,BIRTHDAY,ADDRESS,EMAIL,SALARY, PHONE) VALUES
('4',N'Nguyễn D','1','2012/02/23 ', N'Nam định',N'dong15442@gmail.com',27000000,'0945236543'),
('5',N'Nguyễn E','0','2000/05/12', N'Hưng yên',N'dong134952@gmail.com',29000000,'0945236576'),
('11',N'Nguyễn F','0','2022/06/23', N'Hòa Bình',N'dong159442@gmail.com',27000000,'0945236543'),
('12',N'Nguyễn H','1','1979/11/29', N'Bình định',N'dong159442@gmail.com',27000000,'0945236543')
GO
--
SELECT * FROM Employee
GO
--
INSERT  Employee(ID,FULLNAME,GENDER,BIRTHDAY,ADDRESS,EMAIL,SALARY, PHONE) VALUES
('13',N'Nguyễn DG','0','2012/02/13 ', N'Nam định A',N'dong135442@gmail.com',1700000,'0945236543')
GO
--
select * from Employee where SALARY <= 2000000
go
-- đưa ra các danh sách nhân viên có sinh nhật trong tháng này 
INSERT  Employee(ID,FULLNAME,GENDER,BIRTHDAY,ADDRESS,EMAIL,SALARY, PHONE) VALUES
('14',N'Nguyễn DG','0','2012/12/13 ', N'Nam định A',N'dong135442@gmail.com',1700000,'0945236543')
GO

select * from Employee where DATEPART(month,BIRTHDAY)=DATEPART(MONTH, GETDATE())
GO
/*
	DATEPART(datepart, date)
	- datepart: Là phần của ngày hoặc thời gian mà bạn muốn trích xuất (ví dụ: YEAR, MONTH, DAY, HOUR, MINUTE, SECOND).
	- date: Là giá trị ngày hoặc thời gian mà bạn muốn trích xuất phần từ.
*/
--lấy ra danh sách nhân viên và định dạng tháng từ yyyy/mm/dd thành dd/mm/yyyy trong sql
select ID,FULLNAME,CONVERT(varchar(15), BIRTHDAY,103) as  BIRTHDAY
from Employee
GO
--
select *
from Employee
where ADDRESS  like N'hà nội'
go
--sửa đổi tên nhân viên có mã là 1 thành john
update Employee
set FULLNAME='John'
where ID='1'
go
select * from Employee 
go
--xóa nhân viên có tuổi <18
DELETE  Employee
where DATEDIFF(YEAR, BIRTHDAY,GETDATE()) < '18'
GO
select * from Employee 
go
--copy 1 nhân viên trên 20 tuổi sang 1 bảng khác
--tạo bảng
create table CaLam
(
	MANV INT CONSTRAINT PK_CaLam PRIMARY KEY
	,NAME NVARCHAR(50) NOT NULL
	,SEX BIT
	,ADDRESS NVARCHAR(MAX)
)
go
--thêm cột
ALTER TABLE CaLam
	add birthday datetime
go

insert into CaLam(MANV,NAME,SEX,ADDRESS,birthday)
select ID,FULLNAME,GENDER,ADDRESS,BIRTHDAY
from Employee
where DATEDIFF(year,BIRTHDAY, GETDATE()) >20
GO
SELECT * FROM CaLam
GO
	
--đếm số sinhvieen
select COUNT(*) as 'số nhân viên' from Employee 
go