-- Xóa bảng Person nếu đã tồn tại
DROP TABLE IF EXISTS Product;

/* 1. Tạo một bảng mới có tên “Product” với các trường: 
“product_id” , “product_name” (varchar), “price” (double) và “quantity” (int).
*/

CREATE TABLE Product (
    product_id INT,
    product_name VARCHAR(255),
    price DOUBLE,
    quantity INT
);

-- 2. Thêm 10 sản phẩm vào bảng “Product” với thông tin sản phẩm bất kỳ.
INSERT INTO Product(product_id, product_name, price, quantity)
VALUES (1, 'V8 - Vegetable Cocktail', 299, 34),
		(2, 'Cleaner - Pine Sol', 631, 43),
		(3, 'Chicken - Whole Fryers', 560, 92),
		(4, 'Fondant - Icing', 275, 10),
		(5, 'Wine - Casillero Del Diablo', 68, 7),
		(6, 'Flavouring - Orange', 183, 63),
		(7, 'Longos - Lasagna Beef', 433, 1),
		(8, 'Crab - Imitation Flakes', 844, 96),
		(9, 'Wine - Baron De Rothschild', 155, 87),
		(10, 'Muffin Mix - Carrot', 934, 31);
        
-- Kiểm tra dữ liệu đã tạo        
SELECT * FROM Product;

-- 3. Thêm một trường “description” (varchar) vào bảng “Product” sau khi đã tạo bảng.
ALTER TABLE Product
ADD description VARCHAR(255);

-- 4. Cập nhật giá (price) của sản phẩm có “product_id” là 1 thành 99.
UPDATE Product 
SET price = 99
WHERE product_id = 1;

-- 5. Tăng giá của sản phẩm có “product_id” là 2 lên 10%.
UPDATE Product 
SET price = price + price * 0.1
WHERE product_id = 2;

-- Kiểm tra dữ liệu đã tạo        
SELECT * FROM Person;

-- 6. Cập nhật tên của người có id là 10 thành “John Doe”.
UPDATE Person
SET fullname = 'John Doe'
WHERE id = 10;

-- 7. Đổi quốc gia của người có id là 3 thành “Canada”.
UPDATE Person 
SET country = 'Canada'
WHERE id = 3;

-- 8. Sửa ngày sinh của người có id là 7 thành “1990-05-15” và quốc gia thành Việt Nam.
UPDATE Person 
SET birthday = '1990-05-15', country = "Việt Nam"
WHERE id = 7;

-- 9. Tăng mức lương của người có id là 40 lên 10%.
UPDATE Person 
SET salary = salary + (salary * 0.1)
WHERE id = 40;

-- 10. Giảm lương của những người nào có mức lương trên 6000 xuống 15%
UPDATE Person 
SET salary = salary - (salary * 0.15)
WHERE salary > 6000;