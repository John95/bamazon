DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT, /*unique ID for each product*/
    product_name VARCHAR(50) NULL, /*Name of product*/
    department_name VARCHAR(50) NULL,
    price DECIMAL(10,2) NULL, /*Cost to customer*/
    stock_quantity INT NULL, /*How much product is available in stores*/
    PRIMARY KEY(item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cookie", "Kroger", 2.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PHB", "Wizards of the Coast", 30.00, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Monster Manual", "Wizards of the Coast", 30.00, 10);

SELECT * FROM products;