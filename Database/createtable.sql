--drop table bill_info
--drop table bill
--drop table account
--drop table product
--drop table category

CREATE TABLE category(
	cate_id int PRIMARY KEY identity(1,1),
	name nvarchar(50),
	description nvarchar(max)
)

CREATE TABLE product (
	cate_id int REFERENCES category (cate_id),
	product_id varchar(50) PRIMARY KEY,
	product_name nvarchar(100),
	brand varchar(50),
	price int,
	sale_percent int,
	quantity int,
	img varchar(max),
	description nvarchar(max)

)

CREATE TABLE account(
	account_id int PRIMARY KEY IDENTITY(1,1),
    email varchar(50) NOT NULL UNIQUE,
    password varchar(50) NOT NULL,
    name nvarchar(50) NOT NULL,
	address nvarchar(255),
    phone varchar(12) NOT NULL,
    role int NOT NULL
)


CREATE TABLE bill(
	bill_id int PRIMARY KEY identity(1,1),
	account_id int,
	order_date datetime,
	address nvarchar(255),
	total_price int,
	status int, --1 processing, 2 delivering, 3 canceled, 4 delivered
	FOREIGN KEY(account_id) REFERENCES account(account_id)
)

CREATE TABLE bill_info(
	bill_id int,
	product_id varchar(50),
	quantity int,
	price int,
	PRIMARY KEY(bill_id,product_id),
	FOREIGN KEY(product_id) REFERENCES product(product_id)
)

