-- restaurant information
INSERT INTO tbl_restaurant (rst_name, rst_number, rst_location, rst_manager)
VALUES
('Chicos Tacos', '915-123-4567', '3401 Dyer St, El Paso, Tx 79930', 'Armida Ray'),
('Whataburger', '915-987-6543', '4640 Woodrow Bean Transmountain, El Paso, Tx 79924', 'Tania Adame'),
('Kona Grill', '915-345-6789', '8889 Gateway Blvd West, Ste. 1740, El Paso, Tx 79925', 'Izcalli Garnica'),
('Crave Kitchen & Bar', '915-789-1234', '300 Cincinnati Ave, El Paso, Tx 79902', 'Mario Adame');

# Chicos Tacos Menu
INSERT INTO tbl_products (rst_id, product_name, product_price, inventory)
VALUES
(1, 'Single Order', 4.44, 50),
(1, 'Double Order', 8.88, 50),
(1, 'Grilled Cheese Sandwich', 1.87, 30),
(1, 'Regular Hamburger', 3.06, 30),
# Whataburger Menu
(2, 'Green Chili Double', 11.29, 40),
(2, 'Buffalo Ranch Chicken Strip Sandwich', 11.59, 40),
(2, 'Whataburger', 8.99, 50),
(2, 'Whatachickn Strips 3 Pcs', 9.49, 50),
# Kona Grill Menu
(3, 'California Roll', 6.00, 30),
(3, 'Avocado Egg Roll', 9.00, 30),
(3, '1/4lb Cheeseburger & Fries', 6.00, 25),
(3, 'Angry Edamame', 3.00, 25),
# Crave Kitchen & Bar Menu
(4, 'Whipped Feta Dip', 16.00, 20),
(4, 'Ancient Grains', 13.00, 20),
(4, 'Bibb Salad', 12.00, 20),
(4, 'Tuna Poke Salad', 19.00, 15);

# Customer Information
INSERT INTO tbl_customer (cst_username, cst_password, f_name, l_name, cst_number, cst_email)
VALUES
('Tacol0ver123', 'Passw0rd', 'John', 'Doe', '915-456-4567', 'foodie@gmail.com'),
('Whatadude01', 'Passw0rd1', 'Tom', 'Riddle', '915-678-8765', 'burgerbro1@yahoo.com'),
('GrillMast3r', 'Passw0rd2', 'Harry', 'Potter', '915-345-3456', 'epicwizard@aol.com'),
('Kitchenqueen', 'Passw0rd3', 'Jane', 'Doe', '915-765-7654', 'jane.doe.123@hotmail.com');

# Restaurant Employee Information
INSERT INTO tbl_employee (emp_username, emp_password, emp_f_name, emp_l_name, emp_phone_number, emp_email)
VALUES
('joanna_ray', 'JR915', 'Joanna', 'Ray', '915-233-4555', 'rayjoanna@gmail.com'),
('tania_adame', 'TA924', 'Tania', 'Adame', '915-667-8456', 'adametania@icloud.com'),
('izcalli_garnica', 'IG804', 'Izcalli', 'Garnica', '915-444-3476', 'izcalli.g@hotmail.com'),
('adamemr', 'MA811', 'Mario', 'Adame', '915-555-7768', 'madame@yahoo.com');

# Random order table to mimic real life orders
INSERT INTO tbl_orders (customer_id, order_total, order_status)
VALUES
(1, 17.76, 'Order Placed'),
(2, 20.88, 'Order Received'),
(3, 18.00, 'Order Complete'),
(4, 48.00, 'Order Placed');

# Ouput table for what a customer orders
INSERT INTO tbl_order_items (order_id, product_id, quantity, order_price)
VALUES
(1, 1, 2, 17.76),
(2, 5, 1, 11.29),
(3, 9, 1, 6.00),
(4, 13, 1, 16.00);