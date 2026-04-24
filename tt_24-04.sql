CREATE DATABASE dtb_tt;

use dtb_tt;


CREATE TABLE Categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL CHECK (stock > 0),
    category_id INT,
    CONSTRAINT FOREIGN KEY (category_id) REFERENCES Categories (category_id)
);
INSERT INTO Products
VALUE (1,'iphone15',25000000,10,1),
		(2,'Samsung S23',20000000,5,1),
        (3,'Áo sơ mi nam',500000,50,2),
        (4,'Giày thể thao',1200000,20,2);

SET SQL_SAFE_UPDATES = 0;

UPDATE Products
SET price = 26000000
WHERE product_name = 'iphone15';

UPDATE Products
SET stock = stock + 10
WHERE category_id = 1;


DELETE FROM Products
WHERE  product_id = 4;

DELETE FROM Products
WHERE  price < 1000000;

SELECT * FROM Products;


SELECT * FROM Products
WHERE stock > 15;






