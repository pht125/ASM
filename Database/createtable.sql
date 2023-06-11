
--DROP TABLE category
--DROP TABLE product
--DROP TABLE role_account
--DROP TABLE account
--DROP TABLE customer
--DROP TABLE payment
--DROP TABLE bill
--DROP TABLE bill_info



CREATE TABLE category(
	cate_id int PRIMARY KEY identity(1,1),
	[name] nvarchar(50),
	[description] nvarchar(max)
)

CREATE TABLE product (
	cate_id int REFERENCES category (cate_id),
	product_id varchar(50) PRIMARY KEY,
	product_name nvarchar(100),
	brand varchar(50),
	size char(2),
	price money,
	quantity int,
	img varchar(255),
	[description] nvarchar(max)

)

CREATE TABLE role_account(
	id_role int PRIMARY KEY
	
)

CREATE TABLE account(
	username varchar(50) PRIMARY KEY,
	[password] varchar(50),
	id_role int REFERENCES role_account(id_role)

)

CREATE TABLE customer(
	customer_id int PRIMARY KEY identity(1,1),
	username varchar(50),
	customer_mail varchar(50),
	customer_phone char(10),
	customer_address nvarchar(255),
	[password] varchar(50),
	id_role int REFERENCES role_account(id_role)

)

CREATE TABLE payment(
	payment_id int PRIMARY KEY identity(1,1),
	payment_method varchar(50)
)

CREATE TABLE bill(
	bill_id varchar(50) PRIMARY KEY,
	payment_id int REFERENCES payment(payment_id),
	customer_id int REFERENCES customer(customer_id),
	customer_name varchar(50),
	customer_address varchar(50),
	customer_phone varchar(50),
	customer_mail varchar(50),
	order_date datetime
)

CREATE TABLE bill_info(
	bill_id varchar(50),
	product_id varchar(50),
	quantity int,
	price money,
	PRIMARY KEY(bill_id,product_id),
	FOREIGN KEY(product_id) REFERENCES product(product_id),
	FOREIGN KEY(bill_id) REFERENCES bill(bill_id)
)

