CREATE TABLE IF NOT EXISTS 'customer'(
	'id' int(255) NOT NULL AUTO_INCREMENT,
	'name' varchar(50) COLLATE utf8_unicode_ci NOT NULL,
	'username' varchar(50) COLLATE utf8_unicode_ci NOT NULL,
	'email' varchar(50) COLLATE utf8_unicode_ci NOT NULL,
	'phone' varchar(15) COLLATE utf8_unicode_ci NOT NULL,
	'address' varchar(128) COLLATE utf8_unicode_ci NOT NULL,
	'password' varchar(40) COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ('id')
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
 AUTO_INCREMENT=19 ;