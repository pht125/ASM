CREATE TABLE rating(
	rate int,
	customer_id int NOT NULL,
	product_id int NOT NULL,
	PRIMARY KEY(customer_id,product_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(product_id) REFERENCES product(product_id)
)