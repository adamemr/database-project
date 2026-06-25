SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS tbl_item_order;
DROP TABLE IF EXISTS tbl_orders;
DROP TABLE IF EXISTS tbl_product;
DROP TABLE IF EXISTS tbl_employee;
DROP TABLE IF EXISTS tbl_customer_information;
DROP TABLE IF EXISTS tbl_restaurant;

SET FOREIGN_KEY_CHECKS = 1;

# Restaurant table that stores key restaurant information
CREATE TABLE tbl_restuarant (
	rst_id INT AUTO_INCREMENT PRIMARY KEY,
	rst_name VARCHAR(20) NOT NULL,
	rst_number VARCHAR(13),
	rst_location VARCHAR(40),
	rst_manager VARCHAR(40)
);

# Customer table to store basic user account information
CREATE TABLE tbl_customer (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	cst_username VARCHAR(15) NOT NULL UNIQUE,
    cst_password VARCHAR(17) NOT NULL,
    f_name VARCHAR(15),
    l_name VARCHAR(15),
    cst_number VARCHAR(13),
    cst_email VARCHAR(40)
);

# Employee table for employee information
CREATE TABLE tbl_employee (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_username VARCHAR(30) NOT NULL UNIQUE,
    emp_passowrd VARCHAR(17) NOT NULL,
    emp_f_name VARCHAR(20),
    emp_l_name VARCHAR(20),
    emp_phone_number VARCHAR(20),
    emp_email VARCHAR(25) UNIQUE
);

# Inventory product names and quantity
CREATE TABLE tbl_product (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    rst_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price DECIMAL(4,2) NOT NULL DEFAULT 0.00,
    inventory INT NOT NULL DEFAULT 0,
    FOREIGN KEY (rst_id) REFERENCES tbl_restaurant(rst_id)
);

# Customer order processing data 
CREATE TABLE tbl_orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    order_total DECIMAL(4,2) NOT NULL DEFAULT 0.00,
    order_status VARCHAR(30) DEFAULT 'Order Placed',
    FOREIGN KEY (customer_id) REFERENCES tbl_customer(customer_id)
);

# Customer ordered items
CREATE TABLE tbl_order_items (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    order_price DECIMAL(4,2) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES tbl_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES tbl_product(product_id)
);
