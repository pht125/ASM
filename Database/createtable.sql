

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
	price money,
	sale_price money,
	quantity int,
	img varchar(max),
	description nvarchar(max)

)

CREATE TABLE account(
	account_id int PRIMARY KEY IDENTITY(1,1),
    email varchar(50) NOT NULL UNIQUE,
    password varchar(50) NOT NULL,
    name varchar(50) NOT NULL,
    phone varchar(12) NOT NULL,
    address varchar(50),
    role int NOT NULL
)


CREATE TABLE bill(
	bill_id int PRIMARY KEY identity(1,1),
	account_id int,
	order_date datetime,
	total_price money,
	FOREIGN KEY(account_id) REFERENCES account(account_id)
)

CREATE TABLE bill_info(
	bill_id int,
	product_id varchar(50),
	quantity int,
	price money,
	PRIMARY KEY(bill_id,product_id),
	FOREIGN KEY(product_id) REFERENCES product(product_id),
	FOREIGN KEY(bill_id) REFERENCES bill(bill_id)
)

