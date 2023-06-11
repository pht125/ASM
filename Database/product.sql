--DROP TABLE product

CREATE TABLE product(
	product_id int NOT NULL identity(1,1),
	name varchar(50) NOT NULL,
	quantity int NOT NULL,
	price int NOT NULL,
	discount int NOT NULL,
	image varchar(500) NOT NULL,
	PRIMARY KEY (product_id),
	cate_id int NOT NULL,
	FOREIGN KEY(cate_id) REFERENCES category(cate_id),

)