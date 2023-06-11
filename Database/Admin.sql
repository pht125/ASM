CREATE TABLE admin(
	id int NOT NULL identity(1,1),
	username varchar(32) NOT NULL,
	password varchar(32) NOT NULL,
	name varchar(128) NOT NULL ,
	PRIMARY KEY(id)
)
