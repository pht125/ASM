--DROP TABLE bill

CREATE TABLE bill(
	bill_id int NOT NULL,
	check_in_date date NOT NULL,
	customer_id int NOT NULL,
	PRIMARY KEY(bill_id)
)