create database QL_SHOP
use QL_SHOP


CREATE TABLE ADMIN
(
	MAAD INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	HOTENAD NVARCHAR(50),
	NGAYSINHAD date,
	DIACHIAD nvarchar(max),
	USENAMEAD nvarchar(max),
	MATKHAUAD NVARCHAR(50),
	EMAILAD NVARCHAR(50),
	GIOITINHAD NCHAR(3),
	DIENTHOAIAD CHAR(11)
)


CREATE TABLE KHACHHANG
(
	MAKH INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	HOTEN NVARCHAR(50),
	NGAYSINH date,
	DIACHI nvarchar(max),
	USENAME nvarchar(max),
	MATKHAU NVARCHAR(50),
	EMAIL NVARCHAR(50),
	GIOITINH NCHAR(3),
	DIENTHOAI CHAR(11)
)

create table LOAISANPHAM
(
	MALOAI INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	HINH nvarchar(50),
	TENLOAI nvarchar(50)
)
--drop table SANPHAM
create table SANPHAM
(
	MASP INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TENSP nvarchar(max),
	SIZE nvarchar(50),
	GIA float,
	MOTA nvarchar(max),
	MALOAI int,
	HINH nvarchar(max)
)
alter table SANPHAM
add constraint FK_LOAISP_SP foreign key (MALOAI) references LOAISANPHAM(MALOAI)

set dateformat dmy

INSERT INTO ADMIN(HOTENAD,NGAYSINHAD,DIACHIAD,USENAMEAD,MATKHAUAD,EMAILAD,GIOITINHAD,DIENTHOAIAD)
VALUES(N'Phan Thị Ngọc Dung','10/03/2000',N'65/17 Nguyễn Đỗ Cung, Tây Thạnh, Tân Phú','ngocdung','dung123','phanngocdung1604@gmail.com',N'Nữ','0346782587'),
(N'Phạm Thị Vi','10/10/2000',N'6 Dương Đức Hiền, Tây Thạnh, Tân Phú','viheo','heovi','phamthivi@gmail.com',N'Nữ','0376437459')


INSERT INTO KHACHHANG(HOTEN,NGAYSINH,DIACHI,USENAME,MATKHAU,EMAIL,GIOITINH,DIENTHOAI)
VALUES(N'Phan Thị Ngọc Dung','10/03/2000',N'65/17 Nguyễn Đỗ Cung, Tây Thạnh, Tân Phú','ngocdung','dung123','phanngocdung1604@gmail.com',N'Nữ','0346782587'),
(N'Phạm Thị Vi','15/02/2000',N'25 Nguyễn Sáng , Tây Thạnh, Tân Phú ','thivi','pig','phamthiviheo@gmail.com',N'Nữ','0376437459'),
(N'Lý Hoàng Phi Dũng','13/6/2000',N' 4 Văn Cao, Phường 10, Tân Bình','phidung','dungkhung','phidung@gmail.com',N'Nam','094645368'),
(N'Đỗ Thanh Tùng','25/10/2000',N'23 Tân Hương, phường 6, Tân Bình','thanhtung','tungmat','dothanhtung@gmail.com',N'Nam','094625783')

insert into LOAISANPHAM(HINH ,TENLOAI)
values (N'~\Image\Áo.png',N'CLOTHES'),
(N'~\Image\Áo_Khoác.png',N'JACKET'),
(N'~\Image\ball.png',N'BALL'),
(N'~\Image\Giày.png',N'SHOES'),
(N'~\Image\Phụ_Kiện.png',N'MATCH PROTECTION')


insert into SANPHAM(TENSP,SIZE,GIA,MOTA,MALOAI,HINH)
values(N'Bộ Quần Áo Nam Nữ BEYONO BYO5','S-M-L-XL',149.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo1.jpg'),
(N'Bộ Quần Áo Nam Nữ BEYONO BYO7','S-M-L-XL',149.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo2.jpg'),
(N'Bộ Quần Áo Nam Nữ BEYONO BYO11','S-M-L-XL',149.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo3.jpg'),
(N'Bộ Quần Áo Ngắn Tay BEYONO BYONT17','S-M-L-XL',149.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo4.jpg'),
(N'Bộ Quần Áo BEYONO BYO8','S-M-L-XL',149.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo5.jpg'),
(N'Bộ Quần Áo Nam Nữ MIZAMA','S-M-L-XL',169.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo6.jpg'),
(N'Bộ Quần Áo Nam Nữ ASICS','S-M-L-XL',199.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo7.jpg'),
(N'Bộ Quần Áo Nam Nữ KINDER','S-M-L-XL',179.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo8.jpg'),
(N'Bộ Quần Áo Nam Nữ MIZAMA','S-M-L-XL',169.000,N'Chất liệu vải co dãn thoáng mát , rút mồ hôi, sản phẩm được nhiều người lựa chọn nhất',1,'~\Image\ImgDo\Bo9.jpg'),
(N'Áo Khoát Thể thao ADIDAS - Đỏ','S-M-L-XL',249.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao1.jpg'),
(N'Áo Khoát Thể thao ADIDAS - Trắng','S-M-L-XL',299.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao2.jpg'),
(N'Áo Gió Nam Thể Thao 2020','S-M-L-XL',349.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao3.jpg'),
(N'Áo Khoát Thể Thao ADIDAS SST5','S-M-L-XL',229.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao4.jpg'),
(N'Áo Khoát Thể Thao ATT5','S-M-L-XL',249.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao5.jpg'),
(N'Áo Khoát Thể Thao ST35','S-M-L-XL',249.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao6.jpg'),
(N'Áo Khoát Thể Thao Chống Nước','S-M-L-XL',199.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao7.jpg'),
(N'Áo Khoát Thể Thao ADIDAS  SST8','S-M-L-XL',299.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao8.jpg'),
(N'Áo Khoát Thể Thao SST6 ADIDAS','S-M-L-XL',249.000,N'Vải mềm mại, thoát mát, sản phẩm được nhiều người lựa chọn nhất',2,'~\Image\imgaoKhoat\ao9.jpg'),
(N'Bóng Chuyền Động Lực EBETE DTS',N'Loại 1, Loại 2, Loại 3',399.000,N'Bóng được làm từ chất liệu da PVC cao cấp.Bóng có độ nảy tốt, không trơn trượt.Bóng dùng trong thi đấu và tập luyện.',3,'~\Image\imgbanh\banh1.png'),
(N'Bóng Chuyền Hơi Động Lực JATAN',N'Loại 1, Loại 2, Loại 3',299.000,N'Bóng chuyền hơi 200 gram màu sắc đa dạng, được làm từ chất liệu cao su mềm, có độ bền cao, tròn đều, độ nảy cực chuẩn phù hợp tiêu chuẩn bộ môn bóng chuyền.',3,'~\Image\imgbanh\banh2.jpg'),
(N'Bóng Chuyền Động Thăng Long DTS',N'Loại 1, Loại 2, Loại 3',459.000,N'Bóng được làm từ chất liệu da sịn. Thường dược dùng trong các trận đấu.',3,'~\Image\imgbanh\banh3.jpg'),
(N'Bóng Chuyền Động Lực EBETE DTS',N'Loại 1, Loại 2, Loại 3',299.000,N'Bóng được làm từ chất liệu da PVC cao cấp.Bóng có độ nảy tốt, không trơn trượt.Bóng dùng trong thi đấu và tập luyện.',3,'~\Image\imgbanh\banh4.jpg'),
(N'Bóng Chuyền Chuyên Dụng MIKASA Mva300',N'Loại 1',359.000,N'Thiết kế xoáy 8 mảng mới cho phép nhiều vùng tiếp xúc trên bề mặt của quả bóng, cải thiện khả năng truyền và điều khiển.',3,'~\Image\imgbanh\banh5.jpg'),
(N'Bóng chuyền động lực GALAXY DG 250C Cao cấp',N'Loại 1, Loại 2, Loại 3',559.000,N'Hàng tiêu chuẩn và Cao cấp nhất  của Động lực. Sản phẩm được lựa chọn  trong các giải đấu bóng chuyền hàng đầu của Việt Nam. Đạt tiêu chuẩn thi đấu Quốc tế  được  nhiều  giải đấu  trên thế giới lựa chọn  ',3,'~\Image\imgbanh\banh6.png'),
(N'Bóng Chuyền Wilson ',N'Loại 1, Loại 2, Loại 3',399.000,N'Bóng chuyền chính hãng Wilson chất liệu da PVC cao cấp. Hàng công ty xuất khẩu. Không đúng mô tả có thể hoàn lại tiền.',3,'~\Image\imgbanh\banh7.jpg'),
(N'Bóng chuyền NGÔI SAO VIỆT ',N'Loại 1, Loại 2, Loại 3',299.000,N'Qủa Bóng Chuyền Prostar VFC 2000 là sản phẩm chuyên dụng trong việc thi đấu của bộ môn thể thao nổi tiếng cùng tên.Sản phẩm được làm từ chất liệu cao su chắc chắn, chịu lực tốt và không thấm nước.',3,'~\Image\imgbanh\banh8.jpg'),
(N'Bóng chuyền VTV CUP 2019 CAO CẤP',N'Loại 1, Loại 2, Loại 3',559.000,N'Chất liệu da PU được sử dụng rất nhiều trong ngành dụng cụ thể thao, để làm ra các sản phẩm có độ mềm thích hợp và không bị tác động bởi môi trường bên ngoài. ',3,'~\Image\imgbanh\banh9.jpg'),
(N'Giày Thể Thao VEMBEN','38-40',269.000,N'Giày Nữ Thể Thao Bao Lưới Thoáng Khí Ngoài Trời',4,'~\Image\imgGiay\Giay1.jpg'),
(N'Giày Chạy Bộ BJAKIN ','38-40',399.000,N'Lưới Thoáng Khí Ngoài Trời Giày Thể Thao Nhẹ Huấn Luyện',4,'~\Image\imgGiay\Giay2.jpg'),
(N'Giày thể thao GRT','38-40',299.000,N'Hàng mới về đế cao su non cực êm và nhẹ',4,'~\Image\imgGiay\Giay3.jpg'),
(N'Giày thể thao MIAMA','38-40',399.000,N'Cao su non đúc, tạo cảm giác thoải mái khi đi ',4,'~\Image\imgGiay\Giay4.jpg'),
(N'Giày thể thao BEYONO','38-40',250.000,N'Giày Nữ Thể Thao Bao Lưới,Cao su non đúc, tạo cảm giác thoải mái khi đi',4,'~\Image\imgGiay\Giay5.jpg'),
(N'Giày thể thao MWC','38-40',249.000,N'Công nghệ dệt, tạo thêm nhiều lỗ thoáng khí hơn giúp đôi chân luôn thoáng mát, thoải mái tối đa khi sử dụng trong thời gian dài.',4,'~\Image\imgGiay\Giay6.jpg'),
(N'Giày thể thao SNEAKER ','38-40',199.000,N'Mũi giày được bọc cứng, có lớp đệm cao su nhằm bảo vệ đầu ngón chân khi hoạt động.',4,'~\Image\imgGiay\Giay7.jpg'),
(N'Giày thể thao ADIDAS','38-40',250.000,N'Êm và nhẹ, đế cao su non đúc kiểu dáng thời trang',4,'~\Image\imgGiay\Giay8.jpg'),
(N'Giày thể thao KAWASAXI','38-40',250.000,N'Giày Nữ Thể Thao Bao LướiCao su non đúc, tạo cảm giác thoải mái khi đi',4,'~\Image\imgGiay\giay9.jpg'),
(N'Bó gối Chân Phụ Kiện Bảo Hộ',N'Loại 1, Loại 2, Loại 3',159.000,N'Phụ kiện băng gối bóng chuyền rất cần thiết trong các trận thi đấu bóng chuyền để giúp giảm sát thương với mỗi vận động viên',5,'~\Image\imgDungCu\Loai1.jpg'),
(N'Bộ lưới căng bóng chuyền BBV',N'Loại 1, Loại 2, Loại 3',159.000,N'Khung sắt D 42 sơn tĩnh điện. Gắn cố định trên tường. Có thể điều chỉnh độ cao bóng',5,'~\Image\imgDungCu\Loai2.jpg'),
(N'Bộ dụng cụ tạp điệm banh',N'Loại 1, Loại 2, Loại 3',199.000,N'Laoij một bộ dụng cụ giúp cho chúng ta thủ tốt nhất, giúp chúng ta có thể thủ tốt tất cả các banh đập của đối phương',5,'~\Image\imgDungCu\Loai3.jpg'),
(N'Căng cáp Căng lưới(tâng lưới)',N'Loại 1, Loại 2, Loại 3',109.000,N'Khung sắt D 42 sơn tĩnh điện. Gắn cố định trên tường. Có thể điều chỉnh độ cao bóng',5,'~\Image\imgDungCu\Loai4.jpg'),
(N'Bộ dụng cụ tập đập bóng',N'Loại 1, Loại 2, Loại 3',259.000,N'Là dụng cụ rất cần thiết cho những chủ công tương lai co thế giới, cho những dân chới bóng chuyền. tập bật cao...',5,'~\Image\imgDungCu\Loai5.jpg'),
(N'Cây tính điểm có chân',N'Loại 1, Loại 2, Loại 3',159.000,N'Phụ kiện bóng chuyền rất cần thiết trong các trận thi đấu bóng chuyền, tính sự thắng thua trong trận đấu',5,'~\Image\imgDungCu\Loai6.jpg'),
(N'Ghế trọng tài quan xác',N'Loại 1, Loại 2, Loại 3',559.000,N'Ghế trọng tài bóng chuyền có tổng chiều cao là 2.38m giúp các trọng tài dễ dàng quan sát trận thi đấu của cả 2 đội, giúp kiểm soát trận đấu một cách chính xác. ',5,'~\Image\imgDungCu\Loai7.jpg'),
(N'Loại tập cổ tay, dẽo cổ tay',N'Loại 1, Loại 2, Loại 3',99.000,N'Là dụng cụ rất cần thiết cho những chủ công tương lai cho thế giới, luyện cho đánh vào 3 met của đối phương, cắt điểm tốt nhất...',5,'~\Image\imgDungCu\Loai8.jpg'),
(N'Loại bơm tất cả loại bóng',N'Loại 1, Loại 2, Loại 3',89.000,N'Là phụ kiện cần thiết trong các bộ môn thể thao: Bóng đá, chạy marathon, quần vợt, nhảy dây, bóng chuyền,cầu lông, bóng rổ, đạp xe thể dục, …',5,'~\Image\imgDungCu\Loai9.jpg')

select *from SanPham
select *from KHACHHANG
select * from ADMIN
go

create proc sp_InsertProduct
(
	@tensp nvarchar(10),
	@size nvarchar(10),
	@gia float,
	@mota nvarchar(50),
	@maloai int,
	@hinh nvarchar(50)
	
)
as
begin 
insert into SANPHAM values (@tensp,@size,@gia,@mota,@maloai,@hinh)
end

exec sp_InsertProduct 'BAnh', '1', 5000, 'ngon',3, 'a'
select*from SANPHAM