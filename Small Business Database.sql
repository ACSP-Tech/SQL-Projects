CREATE DATABASE chikel_store ;
USE chikel_store ;
CREATE TABLE Customers (
	customer_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255),
    Phone_number VARCHAR(255),
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id) 
    );
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (1, 'Adesola Faruko', 'Faruk@gmail.com', '09046250042', 'Adesola Faruko street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (2, 'Omosanya Ibrahim', 'Ibrahim@gmail.com', '09039249469', 'Omosanya Ibrahim street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (3, 'Fisayo Kadiri', 'Kadiri@gmail.com', NULL, 'Fisayo Kadiri street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (4, 'Emmanuel Magas', 'Magas@gmail.com', '09026800583', 'Emmanuel Magas street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (5, 'Kehinde Muhammed', 'Muhammed@gmail.com', '09028954382', 'Kehinde Muhammed street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (6, 'Aderemi Musa', 'Musa@gmail.com', '09015018830', 'Aderemi Musa street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (7, 'Marcus Isah', 'Isah@gmail.com', DEFAULT, 'Marcus Isah street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (8, 'Ibrahim Anthony', 'Anthony@gmail.com', DEFAULT, 'Ibrahim Anthony street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (9, 'Oluwaseun Daniel', 'Daniel@gmail.com', '09053945633', 'Oluwaseun Daniel street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (10, 'Peter Emily', 'Emily@gmail.com', '09092748303', 'Peter Emily street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (11, 'ifeoma okeke', 'okeke@gmail.com', '09048133977', 'ifeoma okeke street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (12, 'Asoluka Lorzua', DEFAULT , NULL, 'Peter Emily street');
INSERT INTO Customers (customer_id, name, email_address, Phone_number, address)
VALUES (13, 'Nwala Tamadu', 'Tamadu@gmail.com' , '09091215617', 'Nwala Tamadu street');
CREATE TABLE Orders (
	order_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    `total amount` DECIMAL(50, 2) DEFAULT 0,
    PRIMARY KEY (order_id),
    CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) 
    );
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 4, '2023-09-02', 2300.08);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 3, '2022-04-08', 1493.67);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 7, '2022-11-09', 1979.28);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 9, '2021-04-23', 1203.43);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 5, '2020-02-15', 1505.99);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 6, '2022-05-13', 1481.33);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 4, '2020-04-24', 1621.50);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 10, '2021-03-09', 2224.17);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 2, '2017-05-27', 2097.95);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 10, '2022-09-11', 851.08);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 6, '2019-07-17', 1650.80);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 4, '2021-07-18', DEFAULT);
INSERT INTO Orders (customer_id, order_date, `total amount`)
VALUES ( 1, '2017-03-20', 2268.76);
CREATE TABLE Product_category (
	category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (category_id)
    );
INSERT INTO Product_category ( category_name)
VALUES ('shirts');
INSERT INTO Product_category ( category_name)
VALUES ('skirts');
INSERT INTO Product_category ( category_name)
VALUES ('grown');
INSERT INTO Product_category ( category_name)
VALUES ('trouser');
INSERT INTO Product_category ( category_name)
VALUES ('heels');
INSERT INTO Product_category ( category_name)
VALUES ('slippers');
INSERT INTO Product_category ( category_name)
VALUES ('bags');
INSERT INTO Product_category ( category_name)
VALUES ('belt');
CREATE TABLE Product (
	product_id INT NOT NULL AUTO_INCREMENT,
	category_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    unit_price DECIMAL( 50, 2) NOT NULL,
    quantity_available INT DEFAULT 0,
    PRIMARY KEY (product_id),
    CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES Product_category (category_id)
    );
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 4, 'Contrast Long Trouser - Choco|SLIM FIT', 48, 6);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 5, 'Anderee Patterned heels', 29, 19);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 6, 'Bailey Print Design slippers', 42, 17);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 7, 'Kyle Classic Striped bag -Red', 44, 3);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 8, 'Shiny Patterned belt-Yellow', 50, 1);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 8, 'Killian Plain belt-Pink', 36, 13);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 2, 'Jesse Plain Design skirt-White', 43, 10);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 7, 'Joel Classic Contrast bag - White', 50, 18);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 1, 'Larrosa Plain Formal Long Sleeve Shirt - White', 44, 6);
INSERT INTO Product ( category_id, product_name, unit_price)
VALUES ( 2, 'Kyrie Tiny Striped Long skirts- Brown', 34);
INSERT INTO Product ( category_id, product_name, unit_price, quantity_available)
VALUES ( 3, 'Kamsy Print Casual grown - Multi', 32, 16);
CREATE TABLE order_items (
	order_id INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(50, 2) DEFAULT 0,
    PRIMARY KEY (order_id, product_id)
    );
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 1, 3, 7, 287.5);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 1, 8, 1, 288.3);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 2, 1, 5, 298.73);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 3, 6, 2, 494.82);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 3, 2, 2, 494.82);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 4, 7, 1, 1203.43);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 5, 4, 2, 752.99);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 6, 5, 3, 493.78);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 7, 10, 4, 405.33);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 8, 2, 10, 222.42);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 9, 8, 8, 262.24);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 10, 9, 1, 851.08);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 11, 4, 6, 275.13);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 12, 1, 1, DEFAULT);
INSERT INTO order_items ( order_id, product_id, quantity, unit_price)
VALUES ( 13, 7, 5, 453.75);
CREATE TABLE Employees (
	employee_id INT NOT NULL AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL,
    tittle VARCHAR(255) NOT NULL,
    hire_date DATE,
    PRIMARY KEY (employee_id)
    );
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'kemi Chukwudi', 'HUMAN RESOURCE MANAGER', '2022-05-13');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Precious Chioma', 'ACCOUNTANT', '2017-03-20' );
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Esther Mba', 'ECOMMERCE MANAGER', '2017-05-27');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Chilaka favour', 'SOCIAL MEDIA MANAGER', '2023-02-16');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Halimah Okoro', 'DISPATCHER', '2020-04-24');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Janet Paschal', 'WAREHOUSE PERSONNEL', '2021-03-09');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Chukwuemeka victor', 'INTERNAL CONTROL OFFICER', '2022-09-11');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'Chukwuka sabastine', 'CEO', '2017-01-01');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'faith adebayo', 'FULFILMENT ASSOCIATE', '2020-02-15');
INSERT INTO Employees ( employee_name, tittle, hire_date)
VALUES ( 'okoro kenny', 'OFFICE ASSISTANT', '2023-04-15');