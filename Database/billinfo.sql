CREATE TABLE bill_info(
	bill_info_id int NOT NULL,
	bill_id int NOT NULL,
	product_id int NOT NULL,
	customer_id int NOT NULL,
	customer_name varchar(50) NOT NULL,
	customer_address varchar(128) NOT NULL,
	customer_phone varchar(15) NOT NULL,
	customer_email varchar(50) NOT NULL,
	PRIMARY KEY(bill_info_id)
)