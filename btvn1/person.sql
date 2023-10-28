-- Xóa bảng Person nếu đã tồn tại
DROP TABLE IF EXISTS Person;

/* Tạo 1 bảng Person với các thông tin sau:
	id: kiểu số nguyên,
	fullname: chữ,
	job: chữ,
	birthday: ngày/tháng/năm,
	salary: kiểu số,
	address: chữ.	
*/

CREATE TABLE Person (
    id INT,
    fullname VARCHAR(100),
    job CHAR(50),
    birthday DATE,
    salary DOUBLE,
    addresss VARCHAR(255)
);

-- Thêm 10 bản ghi vào bảng trên.        
INSERT INTO Person(id, fullname, job, birthday, salary, addresss)
VALUES (1, 'Laney Lawlan', 'Geological Engineer', '1952-04-25', 2038, '672 Farragut Circle'),
		(2, 'Joyann Biermatowicz', 'Internal Auditor', '1948-10-23', 10324, '53 Drewry Way'),
		(3, 'Ashleigh Jacobowicz', 'Senior Cost Accountant', '1941-03-18', 12537, '19 Memorial Plaza'),
		(4, 'Toddie Greensmith', 'VP Sales', '1988-03-03', 15171, '007 Pleasure Pass'),
		(5, 'Kyrstin Ricciardello', 'Assistant Manager', '1925-03-23', 19014, '3 Northwestern Point'),
		(6, 'Aprilette Van Velde', 'Clinical Specialist', '1914-02-11', 9476, '09851 Southridge Road'),
		(7, 'Karilynn Skeel', 'Assistant Media Planner', '2009-12-18', 16595, '597 Shopko Way'),
		(8, 'Nanine Eastmead', 'Associate Professor', '1942-11-21', 18265, '6 Hooker Park'),
		(9, 'Yasmin Hanaby', 'Structural Engineer', '1984-07-17', 11971, '99 Shoshone Court'),
		(10, 'Edsel Jenman', 'Physical Therapy Assistant', '1978-02-05', 8602, '8600 Dexter Point');

-- Kiểm tra dữ liệu đã tạo
SELECT * FROM Person;        