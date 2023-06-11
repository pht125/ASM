--DROP TABLE bill_info

CREATE TABLE bill_info(
	bill_info_id int NOT NULL,
	bill_id int NOT NULL,
	product_id int NOT NULL,
	customer_address varchar(128) NOT NULL,
	customer_phone varchar(15) NOT NULL,
	PRIMARY KEY(bill_info_id),
	FOREIGN KEY(product_id) REFERENCES product(product_id)
)