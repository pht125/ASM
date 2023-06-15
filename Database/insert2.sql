INSERT INTO account
VALUES
('admin','123','admin','','',1),
('thai125','123','thsi','0123456789','Viet Nam',2)


INSERT INTO category
VALUES
(N'Bàn Phím',''),
(N'Chuột',''),
(N'Lót Chuột',''),
(N'Switch','')


INSERT INTO product
VALUES
(1,'KB001',N'Bàn phím KBDfans TOFU60 2.0', 'KBDfans',4900000,4900000,30,'',''),
(1,'KB002',N'Bàn phím KBDfans TOFU65 2.0', 'KBDfans',5300000,5300000,30,'',''),
(1,'KB003',N'Bàn phím Glorious GMMK PRO', 'Glorious',4500000,4500000,30,'',''),
(1,'KB004',N'Bàn phím Glorious GMMK 2 Compact 65%', 'Glorious',2100000,2100000,30,'',''),
(1,'KB005',N'Bàn phím Filco Majestouch Minila-R Convertible', 'Filco',4100000,4100000,30,'',''),
(1,'KB006',N'Bàn phím Filco Majestouch 2SC - Tenkeyless', 'Filco',3800000,3800000,30,'',''),


(2,'MS001',N'Chuột Lamzu Atlantis OG V2', 'Lamzu',2500000,2500000,30,'',''),
(2,'MS002',N'Chuột Pulsar X2 Wireless X RandomfrankP', 'Pulsar',2500000,2500000,30,'',''),
(2,'MS003',N'Chuột Pulsar Xlite Wireless v2', 'Pulsar',2500000,2500000,30,'',''),
(2,'MS004',N'Chuột Ninjutso Sora', 'Ninjutso',2500000,2500000,30,'',''),
(2,'MS005',N'Chuột Logitech G PRO X Superlight Wireless', 'Logitech',2800000,2800000,30,'',''),
(2,'MS006',N'Chuột Razer Viper V2 Pro Wireless', 'Razer',2900000,2900000,30,'',''),
(2,'MS007',N'Chuột Glorious Model D PRO', 'Glorious',2700000,2700000,30,'',''),
(2,'MS008',N'Chuột Lamzu Atlantis Mini', 'Lamzu',2500000,2500000,30,'',''),


(3,'MP001',N'Lót chuột Pulsar ParaControl V2', 'Pulsar',480000,480000,30,'',''),
(3,'MP002',N'Lót chuột đế Xsoft Lethal Gaming Gear Saturn', 'Lethal Gaming Gear',710000,710000,30,'',''),
(3,'MP003',N'Lót chuột kính SkyPAD Glass 3.0', 'SkyPAD',2800000,2800000,20,'',''),
(3,'MP004',N'Lót chuột Lethal Gaming Gear Venus', 'Lethal Gaming Gear',710000,710000,30,'',''),
(3,'MP005',N'Lót chuột Steelseries Qck Heavy', 'Steelseries',390000,390000,30,'',''),
(3,'MP006',N'Lót chuột Pulsar eS1 Hybrid - Bruce Lee Edition', 'Pulsar',1100000,1100000,30,'',''),


(4,'SW001',N'Tropical Waters V2 Switch', 'KEEBHUT',13000,13000,1000,'',''),
(4,'SW002',N'Melody Switch', 'PUNKSHOO',15000,15000,1000,'',''),
(4,'SW003',N'Runner Switch', 'PUNKSHOO',15000,15000,1000,'',''),
(4,'SW004',N'Gateron Raw Switch', 'GETARON',11000,11000,1000,'',''),
(4,'SW005',N'Cream Soda switch', 'PUNKSHOO',17000,17000,1000,'',''),
(4,'SW006',N'Blue Bubblegum V2 Switch', 'KEEBHUT',17000,17000,1000,'','')


INSERT INTO bill
VALUES
(2,'2023-5-10',2500000)

INSERT INTO bill_info
VALUES
(1,'MS002',1,2500000)