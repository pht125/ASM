CREATE TABLE IF NOT EXISTS 'admin'(
	'id' int(11) NOT NULL AUTO_INCREMENT,
	'username' varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci 
NOT NULL DEFAULT '',
	'password' varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci 
NOT NULL DEFAULT '',
	'name' varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci 
NOT NULL ,
	PRIMARY KEY('id')
)
--ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6;