DROP DATABASE IF EXISTS quanlysinhdiem;

CREATE DATABASE quanlysinhdiem;

USE quanlysinhdiem;

DROP TABLE IF EXISTS tbl_sinhvien;
DROP TABLE IF EXISTS tbl_giaovien;
DROP TABLE IF EXISTS tbl_diem;

-- 1. Tạo các bảng tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
CREATE TABLE tbl_sinhvien (
    id INT,
    ten VARCHAR(100),
    tuoi INT,
    gioiTinh VARCHAR(50),
    maLop int
);

-- 2. Tạo các bảng tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
CREATE TABLE tbl_giaovien (
    id INT,
    ten VARCHAR(100),
    tuoi INT,
    gioiTinh VARCHAR(50),
    soNamKN INT
);

-- 3. Tạo các bảng tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
CREATE TABLE tbl_diem (
    id INT,
    maSV INT,
    diemToan INT,
    diemLy INT,
    diemHoa INT
);

-- 4. Thêm data vào các bảng, mỗi bảng 10 records
INSERT INTO tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
VALUES (1, 'Aretha Dykes', 20, 'Female', 10),
	(2, 'Ara Crothers', 21, 'Male', 1),
	(3, 'Winni Heinrici', 25, 'Female', 1),
	(4, 'Ab Fidgin', 20, 'Male', 7),
	(5, 'Bird Sibbet', 21, 'Female', 2),
	(6, 'Cris Sturdy', 22, 'Male', 3),
	(7, 'Arman Ferre', 23, 'Male', 5),
	(8, 'Jory Darth', 25, 'Male', 1),
	(9, 'Minnaminnie Pristnor', 20, 'Female', 4),
	(10, 'Howard Chaffyn', 21, 'Male', 3);

INSERT INTO tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
VALUES (1, 'Fredelia Vivash', 54, 'Female', 27),
		(2, 'Rivkah Lissemore', 43, 'Female', 9),
		(3, 'Beniamino Lambdin', 48, 'Male', 28),
		(4, 'Tonya Darque', 56, 'Female', 30),
		(5, 'Aimee Bernhardsson', 32, 'Female', 8),
		(6, 'Bidget Cuppitt', 41, 'Female', 21),
		(7, 'Laurie Daid', 27, 'Female', 5),
		(8, 'Martino Griggs', 53, 'Male', 33),
		(9, 'Forester Mattersley', 58, 'Male', 30),
		(10, 'Dominick Merck', 55, 'Bigender', 20);

INSERT INTO tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
VALUES (1, 1, 9, 10, 7),
		(2, 2, 8, 3, 8),
		(3, 3, 8, 9, 8),
		(4, 4, 6, 1, 10),
		(5, 5, 10, 5, 10),
		(6, 6, 4, 8, 4),
		(7, 7, 10, 2, 9),
		(8, 8, 9, 9, 4),
		(9, 9, 3, 1, 9),
		(10, 10, 6, 4, 2);

-- Kiểm tra dữ liệu đã tạo        
SELECT * FROM tbl_sinhvien;

SELECT * FROM tbl_giaovien;

SELECT * FROM tbl_diem;

-- 5. Tiến hành thực hành, thay đổi cấu trúc bảng bằng alter, update ,v…v… bằng các kiến thức đã học.
-- Thêm một trường “chuyenMon” (varchar) vào bảng "tbl_giaovien" sau khi đã tạo bảng.
ALTER TABLE tbl_giaovien
ADD chuyenMon VARCHAR(100);

-- Thêm 2 trường “soThich” (varchar) và "soTruong" (varchar) vào bảng "tbl_sinhvien" sau khi đã tạo bảng.
ALTER TABLE tbl_sinhvien
ADD soThich VARCHAR(100);

ALTER TABLE tbl_sinhvien
ADD soTruong VARCHAR(255);

-- Xóa trường “soThich” đã thêm trong bảng "tbl_sinhvien"
ALTER TABLE tbl_sinhvien
DROP soThich;

-- Sửa trường “soTruong” trong bảng "tbl_sinhvien" từ VARCHAR(255) thành TEXT
ALTER TABLE tbl_sinhvien
MODIFY soTruong TEXT;

-- Cập nhật điểm toán của sinh viên có mã sinh viên = 5 thành 8 điểm
UPDATE tbl_diem
SET diemToan = 8
WHERE maSV = 5;

-- Xóa sinh viên có mã sinh viên = 6 và 8 trong bảng tbl_sinhvien
DELETE FROM tbl_sinhvien 
WHERE id = 6
OR id = 8;

