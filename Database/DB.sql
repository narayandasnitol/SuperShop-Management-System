clear screen;

DROP TABLE PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE BRANCHES CASCADE CONSTRAINTS;
DROP TABLE ACCOUNTS CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;

CREATE TABLE BRANCHES (
	branch_id int, 
	branch_location varchar(30), 
	head_employee_id int,
    PRIMARY KEY(branch_id));
	
	
CREATE TABLE PRODUCTS (
	product_id int, 
	product_name varchar(30), 
	category varchar(30), 
	price int,
	stock int,
	branch_location varchar(30),
    PRIMARY KEY(product_id)); 

	
CREATE TABLE CATEGORY (
	categoty_id int,
	category_name varchar(30),
    PRIMARY KEY(categoty_id)); 	


CREATE TABLE CUSTOMER(
	customer_id int, 
	customer_name varchar(30),
	contact_no varchar(30),	
	product_id int,
	amount int,
	branch_id int,
	payment_type varchar(30),
	branch_location varchar(30), 
	PRIMARY KEY(customer_id));

	
CREATE TABLE EMPLOYEE (
	employee_id int, 
	employee_name varchar(30), 
	email varchar(20),
	password varchar(20),	
	contact_no varchar(12),
	branch_id int,
	age int,
	PRIMARY KEY(employee_id));


CREATE TABLE ACCOUNTS(
	account_id int, 
	date_recorded date,
	total_amount int,
	total_customers int,
	employee_id int,
	branch_location varchar(30),
	branch_id int, 
	PRIMARY KEY(account_id));
	


insert into BRANCHES(branch_id, branch_location, head_employee_id) values (1, 'Dhanmondi', 1);
insert into BRANCHES(branch_id, branch_location, head_employee_id) values (2, 'Gulshan', 2);


insert into CATEGORY(categoty_id, category_name) values (1, 'Shampoo');
insert into CATEGORY(categoty_id, category_name) values (2, 'Soap');
insert into CATEGORY(categoty_id, category_name) values (3, 'Face Wash');
insert into CATEGORY(categoty_id, category_name) values (4, 'Chocolate');
insert into CATEGORY(categoty_id, category_name) values (5, 'Drinks');
insert into CATEGORY(categoty_id, category_name) values (6, 'Ice-Cream');
insert into CATEGORY(categoty_id, category_name) values (7, 'Magazines');
insert into CATEGORY(categoty_id, category_name) values (8, 'Biscuit');

insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (1, 'Sunsilk', 'Shampoo', 250, 20, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (2, 'Dove', 'Soap', 200, 40, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (3, 'Garnier', 'Face Wash', 250, 10, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (4, 'Dairy Milk', 'Chocolate', 500, 30, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (5, 'CocaCola', 'Drinks', 100, 10, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (6, 'Belissimo', 'Ice-Cream', 300, 40, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (7, 'World Cup Fever', 'Magazines', 300, 20, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (8, 'Head n Shoulder', 'Shampoo', 600, 10, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (9, '7 UP', 'Drinks', 120, 40, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (10, 'Lux', 'Soap', 250, 30, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (11, 'Pantene', 'Shampoo', 400, 10, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (13, 'Clinic Plus', 'Shampoo', 350, 30, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (14, 'Lifebuoy', 'Soap', 100, 40, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (15, 'Kitkat', 'Chocolate', 250, 30, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (16, 'Snickers', 'Chocolate', 400, 25, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (17, 'Chocbar', 'Ice-Cream', 30, 400, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (18, 'Igloo', 'Ice-Cream', 50, 200, 'Dhanmondi');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (19, 'Clemon', 'Drinks', 90, 50, 'Gulshan');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_location) values (20, 'Frooto', 'Drinks', 100, 45, 'Gulshan');

insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (1, 'Sachin', '123', 5, 100, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (2, 'Gavaskar', '123', 6, 300, 1, 'Cash', 'Dhanmondi');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (3, 'Shakib', '456', 9, 120, 2, 'Credit Card', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (4, 'Tamim', '789', 6, 300, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (5, 'Shoummya', '369', 7, 300, 1, 'Credit Card', 'Dhanmondi');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (6, 'Willan', '135', 17, 300, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (7, 'Hazard', '100', 20, 500, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (8, 'Courtois', '785', 12, 600, 1, 'Credit Card', 'Dhanmondi');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (9, 'Morata', '333', 14, 500, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (10, 'Ronaldo', '777', 16, 1000, 1, 'Credit Card', 'Dhanmondi');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (11, 'Messi', '999', 18, 600, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (12, 'Higuain', '000', 10, 450, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (13, 'Kante', '666', 11, 700, 1, 'Credit Card', 'Dhanmondi');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (14, 'Alonso', '423', 15, 800, 2, 'Cash', 'Gulshan');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type, branch_location) values (15, 'Ramos', '444', 8, 800, 2, 'Credit Card', 'Gulshan');

insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (1, 'Nabil', 'nabil@gmail.com', '123', '012', 1, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (2, 'Rumman', 'rumman9@gmail.com', '456', '210', 2, 22);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (3, 'Farzad', 'farzad96@gmail.com', '678', '120', 1, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (4, 'Mow', 'mow@gmail.com', '567', '102', 2, 29);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (5, 'Robin', 'robin96@gmail.com', '789', '312', 1, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (6, 'Showmik', 'showmik96@gmail.com', '312', '213', 1, 23);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (7, 'Sadi', 'sadi@gmail.com', '741', '852', 1, 24);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (8, 'Moin', 'moin@gmail.com', '147', '258', 1, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (9, 'Galib', 'galib2001@gmail.com', '471', '582', 2, 26);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (10, 'Faisal', 'faisal9@gmail.com', '417', '285', 2, 27);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (11, 'Durjoy', 'durjoy@gmail.com', '852', '741', 2, 28);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (12, 'Niloy', 'niloy@gmail.com', '258', '147', 2, 29);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (13, 'Neel', 'neel@gmail.com', '142', '351', 1, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (14, 'Milon', 'milon@gmail.com', '486', '684', 2, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (15, 'Muna', 'muna@gmail.com', '987', '321', 2, 22);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (16, 'Lamiya', 'lamiya@gmail.com', '654', '546', 2, 23);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (17, 'Shifa', 'shifa@gmail.com', '476', '213', 1, 24);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (18, 'Saif', 'saif3@gmail.com', '756', '963', 1, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (19, 'Radiya', 'radiya@gmail.com', '951', '159', 2, 26);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (20, 'Anamita', 'anamita@gmail.com', '753', '357', 1, 27);


insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (1, '15-Jul-19', 2000, 15, 1, 'Gulshan', 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (2, '16-Jul-19', 1500, 12, 2, 'Dhanmondi', 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (3, '17-Jul-19', 2200, 17, 3, 'Gulshan', 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (4, '18-Jul-19', 2500, 10, 4, 'Gulshan', 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (5, '19-Jul-19', 3000, 13, 1, 'Dhanmondi', 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (6, '20-Jul-19', 3500, 17, 2, 'Dhanmondi', 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (7, '21-Jul-19', 2100, 10, 3, 'Gulshan', 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (8, '22-Jul-19', 3000, 12, 4, 'Dhanmondi', 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (9, '23-Jul-19', 3100, 13, 1, 'Gulshan', 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id, branch_location, branch_id) values (10, '24-Jul-19', 3300, 14, 2, 'Gulshan', 2);


commit;
 
