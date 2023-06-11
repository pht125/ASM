--DROP TABLE customer

CREATE TABLE customer(
	customer_id int NOT NULL identity(1,1),
	[name] nvarchar(50) NOT NULL,
	username varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone varchar(15) NOT NULL,
	[address] varchar(128) NOT NULL,
	[password] varchar(40) NOT NULL,
	PRIMARY KEY (customer_id)
)