--DROP TABLE category

CREATE TABLE category(
	cate_id int NOT NULL identity(1,1),
	[name] varchar(50) NOT NULL,
	[description] nvarchar(700) NOT NULL,
	PRIMARY KEY(cate_id)
)

