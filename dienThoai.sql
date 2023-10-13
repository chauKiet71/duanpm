go

create table Loai(
	MaLoai nchar(7) primary key not null,
	tenLoai nvarchar(50) not null
)

CREATE TABLE SanPham (
    MaSanPham nchar(10) PRIMARY KEY,
    TenSanPham NVARCHAR(100),
    GiaBan DECIMAL(18, 2) not null,
	ram varchar(10) not null,
	pin varchar(10) not null,
	rom varchar(20) not null,
	manHinh varchar(20) not null,
	cpu varchar(20) not null,
	soLuong int not null,
	heDieuHanh varchar(20) not null,
	xuatXu nvarchar(30) not null,
	camera varchar(30) not null,
	phanLoaiHang nvarchar(10) not null,
	MaLoai nchar(7) foreign key references Loai(MaLoai),
	logo NVARCHAR(50) NOT NULL,
	moTa NVARCHAR(50) NULL
);

CREATE TABLE KhachHang(
	MaKH  int IDENTITY(1,1) primary key not null,
	TenKH NVARCHAR(255) not null,
	TenDangNhap NVARCHAR(20) not null,
	MatKhau NVARCHAR(50) not null,
	SoDienThoai varchar(10) not null,
	email varchar(50) not null,
	NgaySinh DATE not null,
	ngaytao date not null,
	GioiTinh BIT not null,
	SoTaiKhoan INT,
	NganHangThuHuong nvarchar(50),
	ghichu nvarchar(max),
	soLanMua int,	
	DiaChi NVARCHAR(255) not null,
	MaVT NVARCHAR(5) NOT NULL,
);

CREATE TABLE VaiTro(
	MaVT NVARCHAR(5) PRIMARY KEY NOT NULL,
	TenVaiTro NVARCHAR(50) NOT NULL
);


CREATE TABLE NhanVien(
 MaNV NCHAR(7) primary key not null,
 TenDangNhap NVARCHAR(20) not null,
 MatKhau NVARCHAR(50) not null,
 TenNV NVARCHAR(50) not null,
 soDienThoai int not null,
 email NVARCHAR(50) NOT  NULL,
 ngaySinh DATE not null,
 gioiTinh bit not null,
 ngayBatDau date not null,
 DiaChi NVARCHAR(200) not null,
 ChucVu NVARCHAR(50) not null,
 MaVT NVARCHAR(5) foreign key references VaiTro(MaVT)
);



create table MauSac(
	MaMau nchar(10) primary key not null,
	tenMau nvarchar(20) not null,
	MaSanPham nchar(10) foreign key references SanPham(MaSanPham)
)


CREATE TABLE HoaDon (
    MaHoaDon INT IDENTITY(1,1) PRIMARY KEY,
    NgayLap DATE,
    TongTien DECIMAL(18, 2),
    MaKH INT,
    FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    MaNV NCHAR(7),
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);


CREATE TABLE ChiTietHoaDon (
    MaChiTiet INT IDENTITY(1, 1) PRIMARY KEY,
    MaHoaDon INT,
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon),
    MaSanPham nchar(10),
    SoLuong INT not null,
    DonGia DECIMAL(18, 2) not null,
	PhiVanChuyen DECIMAL(18, 2) not null,
    ThanhTien DECIMAL(18, 2),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);
INSERT INTO Loai (MaLoai, TenLoai) VALUES
    ('L1', N'Loại 1'),
    ('L2', N'Loại 2'),
    ('L3', N'Loại 3'),
    ('L4', N'Loại 4'),
    ('L5', N'Loại 5'),
    ('L6', N'Loại 6'),
    ('L7', N'Loại 7'),
    ('L8', N'Loại 8'),
    ('L9', N'Loại 9'),
    ('L10', N'Loại 10');

	INSERT INTO VaiTro (MaVT, TenVaiTro) VALUES
    ('VT1', N'Khách hàng'),
    ('VT2', N'Nhân viên bán hàng'),
    ('VT3', N'Kế toán'),
    ('VT4', N'Quản lý kho'),
    ('VT5', N'Nhân viên vận chuyển'),
    ('VT6', N'Hỗ trợ khách hàng'),
    ('VT7', N'Nhân viên marketing'),
    ('VT8', N'Lập trình viên'),
    ('VT9', N'Kiểm thử viên'),
    ('VT10', N'Quản trị hệ thống');

INSERT INTO SanPham (MaSanPham, TenSanPham, GiaBan, ram, pin, rom, manHinh, cpu, soLuong, heDieuHanh, xuatXu, camera, phanLoaiHang, MaLoai, logo, moTa) VALUES
    ('SP1', N'Sản phẩm 1', 1000000, '4GB', '3000mAh', '64GB', '6.2 inch', 'Snapdragon 855', 10, 'Android', N'Việt Nam', '12 MP', 'A', 'L1', '',''),
    ('SP2', N'Sản phẩm 2', 2000000, '6GB', '4000mAh', '128GB', '6.5 inch', 'Exynos 9820', 15, 'Android', N'Hàn Quốc', '16 MP', 'B', 'L2', '',''),
    ('SP3', N'Sản phẩm 3', 1500000, '4GB', '3500mAh', '32GB', '6.0 inch', 'Helio P60', 8, 'Android', N'Trung Quốc', '8 MP', 'A', 'L3', '',''),
    ('SP4', N'Sản phẩm 4', 1800000, '8GB', '4500mAh', '256GB', '6.4 inch', 'Kirin 980', 12, 'Android', N'Trung Quốc', '20 MP', 'B', 'L4', '',''),
    ('SP5', N'Sản phẩm 5', 1200000, '3GB', '3000mAh', '16GB', '5.8 inch', 'Snapdragon 665', 5, 'Android', N'Việt Nam', '12 MP', 'A', 'L5', '',''),
    ('SP6', N'Sản phẩm 6', 2500000, '8GB', '5000mAh', '128GB', '6.7 inch', 'Exynos 990', 20, 'Android', N'Hàn Quốc', '16 MP', 'B', 'L6', '',''),
    ('SP7', N'Sản phẩm 7', 1600000, '6GB', '3500mAh', '64GB', '6.1 inch', 'Helio G90T', 10, 'Android', N'Trung Quốc', '8 MP', 'A', 'L7', '',''),
    ('SP8', N'Sản phẩm 8', 1900000, '8GB', '4000mAh', '128GB', '6.5 inch', 'Snapdragon 865', 15, 'Android', N'Trung Quốc', '12 MP', 'B', 'L8', '',''),
    ('SP9', N'Sản phẩm 9', 1300000, '4GB', '3000mAh', '32GB', '5.5 inch', 'Kirin 710', 8, 'Android', N'Việt Nam', '16 MP', 'A', 'L9', '',''),
    ('SP10', N'Sản phẩm 10', 2200000, '12GB', '5000mAh', '256GB', '6.8 inch', 'Snapdragon 888', 12, 'Android', N'Hàn Quốc', '20 MP', 'B', 'L10', '','');

	INSERT INTO MauSac (MaMau, TenMau, MaSanPham) VALUES
    ('M1', N'Đen', 'SP1'),
    ('M2', N'Trắng', 'SP2'),
    ('M3', N'Xanh dương', 'SP3'),
    ('M4', N'Đỏ', 'SP4'),
    ('M5', N'Vàng', 'SP5'),
    ('M6', N'Hồng', 'SP6'),
    ('M7', N'Xám', 'SP7'),
    ('M8', N'Tím', 'SP8'),
    ('M9', N'Xanh lá', 'SP9'),
    ('M10', N'Cam', 'SP10');


	INSERT INTO KhachHang (TenKH, TenDangNhap, MatKhau, SoDienThoai, Email, NgaySinh, NgayTao, GioiTinh, SoTaiKhoan, GhiChu, SoLanMua, DiaChi, MaVT) VALUES
    (N'Nguyễn Ngọc Mạnh', 'user1', 'pass1', '0123456789', 'user1@example.com', '1990-01-01', '2023-10-11', 1, 123456789, NULL, 5, '123 ABC Street', 'VT1'),
    (N'Nguyễn Việt Hà', 'user2', 'pass2', '0123456789', 'user2@example.com', '1992-02-02', '2023-10-11', 0, 987654321, NULL, 3, '456 XYZ Street', 'VT1'),
    (N'Nguyễn Văn Nghị', 'user3', 'pass3', '0123456789', 'user3@example.com', '1988-03-03', '2023-10-11', 1, 246813579, NULL, 8, '789 DEF Street', 'VT1'),
    (N'Đỗ Tuyết Lê', 'user4', 'pass4', '0123456789', 'user4@example.com', '1995-04-04', '2023-10-11', 0, 135792468, NULL, 2, '321 GHI Street', 'VT1'),
    (N'Nguyễn Huy Đoàn', 'user5', 'pass5', '0123456789', 'user5@example.com', '1993-05-05', '2023-10-11', 1, 987654321, NULL, 6, '654 JKL Street', 'VT1'),
    (N'Hồ Thu Thủy', 'user6', 'pass6', '0123456789', 'user6@example.com', '1991-06-06', '2023-10-11', 0, 123456789, NULL, 4, '987 MNO Street', 'VT1'),
    (N'Trần Thị Thư', 'user7', 'pass7', '0123456789', 'user7@example.com', '1994-07-07', '2023-10-11', 1, 987654321, NULL, 7, '789 PQR Street', 'VT1'),
    (N'Nguyễn Ngọc Mai', 'user8', 'pass8', '0123456789', 'user8@example.com', '1989-08-08', '2023-10-11', 0, 246813579, NULL, 3, '543 STU Street', 'VT1'),
    (N'Vũ Tiến Đạt', 'user9', 'pass9', '0123456789', 'user9@example.com', '1996-09-09', '2023-10-11', 1, 135792468, NULL, 5, '876 VWX Street', 'VT1'),
    (N'Đào Tân Quốc Vũ', 'user10', 'pass10', '0123456789', 'user10@example.com', '1997-10-10', '2023-10-11', 0, 123456789, NULL, 2, '135 YZA Street', 'VT1');

-- Thêm dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNV, TenDangNhap, MatKhau, TenNV, soDienThoai, email, ngaySinh, gioiTinh, NgayBatDau, DiaChi, ChucVu, MaVT)
VALUES
    ('NV1', 'user1', 'password1', N'Phạm Ngọc Tiên', '0987654321', 'abc@gmail.com', '1990-01-01',1, '2020-01-01', N'181, Hoàng Văn Thụ, P.8, Q.Phú Nhuận, TP.HCM', 'NhanVien', 'VT10'),
    ('NV2', 'user2', 'password2', N'Nguyễn Viết Lưu','0987654321','abc@gmail.com', '1990-01-01',0, '2020-01-01',  N'181, Hoàng Văn Thụ, P.8, Q.Phú Nhuận, TP.HCM', 'NhanVien', 'VT10'),
    ('NV3', 'user3', 'password3', N'Hoàng Hải Anh','0987654321', 'abc@gmail.com','1995-08-20', 0,'2022-03-10', N'371, Kết Đoàn, P.Bình Thọ, Q.Thủ Đức, TP.HCM', 'NhanVien', 'VT3'),
    ('NV4', 'user4', 'password4', N'Nguyễn Văn Toàn','0987654321','abc@gmail.com', '1988-12-05',0, '2018-07-20', '114 Quốc Lộ 1, P.Tân Tạo, Q.Bình Chánh, TP.HCM', 'QuanLy', 'VT4'),
    ('NV5', 'user5', 'password5', N'Đào Ngọc Long', '0987654321','abc@gmail.com','1992-03-25',0, '2021-09-05',  '543 Đinh Đức Thiện, X.Bình Chánh, H.Bình Chánh, TP.HCM', 'NhanVien', 'VT5'),
    ('NV6', 'user6', 'password6', N'Trần Đăng Long','0987654321', 'abc@gmail.com','1980-06-10',0, '2017-11-11', '303 Quang Trung, Thị Trấn Hóc Môn, TP.HCM', 'QuanLy', 'VT6'),
    ('NV7', 'user7', 'password7', N'Trần Diệu Anh', '0987654321','abc@gmail.com','1993-11-30',1, '2020-08-15', '404 Nguyễn Văn Tạo, Ấp 2, Xã Long Thới, H.Nhà Bè, TP.HCM', 'NhanVien', 'VT8'),
    ('NV8', 'user8', 'password8', N'Nguyễn Thị Thu Trang', '0987654321','abc@gmail.com','1982-04-18',1, '2019-04-30', '505 Chợ Cầu Tre, Đà Nẵng, Ngô Quyên, Hải Phòng', 'QuanLy', 'VT9'),
    ('NV9', 'user9', 'password9', N'Đào Vũ Nghiệp', '0987654321','abc@gmail.com','1998-07-05', 0,'2022-01-22', '423 Nguyễn Trãi, Tân Sơn, Hồng Hải, TP.Hạ Long', 'NhanVien', 'VT10'),
    ('NV10', 'user10', 'password10', N'Lê Quang Huy','0987654321','abc@gmail.com', '1984-09-15',0, '2018-12-12', '707 Khố 2, Thị Trấn Đô Lương, Nghệ An', 'QuanLy', 'VT10');


	INSERT INTO HoaDon ( NgayLap, TongTien, MaKH, MaNV) VALUES
    ('2023-10-01', 1500000, 1, 'NV1'),
    ('2023-10-02', 2000000, 2, 'NV2'),
    ('2023-10-03', 1800000, 3, 'NV3'),
    ('2023-10-04', 2200000, 4, 'NV4'),
    ('2023-10-05', 1900000, 5, 'NV5'),
    ('2023-10-06', 2500000, 6, 'NV6'),
    ('2023-10-07', 2100000, 7, 'NV7'),
    ('2023-10-08', 2300000, 8, 'NV8'),
    ('2023-10-09', 1750000, 9, 'NV9'),
    ('2023-10-10', 2400000, 10, 'NV10');

	INSERT INTO ChiTietHoaDon ( MaHoaDon, MaSanPham, SoLuong, DonGia, PhiVanChuyen, ThanhTien) VALUES
    (1, 'SP1', 2, 500000, 20000, 1000000),
    (1, 'SP2', 1, 2000000, 30000, 2000000),
    (2, 'SP3', 3, 500000, 25000, 1500000),
    (2, 'SP4', 2, 900000, 20000, 1800000),
    (3, 'SP5', 1, 1200000, 30000, 1200000),
    (4, 'SP6', 2, 1100000, 40000, 2200000),
    (5, 'SP7', 1, 1900000, 20000, 1900000),
    (6, 'SP8', 2, 1000000, 50000, 2000000),
    (7, 'SP9', 3, 600000, 15000, 1800000),
    (8, 'SP10', 1, 2400000, 30000, 2400000);

drop table ChiTietHoaDon;
drop table HoaDon;
drop table KhachHang;
drop table Loai;
drop table MauSac;
drop table NhanVien;
drop table SanPham;
drop table VaiTro