USE UniD1oX

INSERT INTO MSCLOTH VALUES 
('CL001', '50', '50000'),
('CL002', '100', '500000'),
('CL003', '150', '110000'),
('CL004', '250', '220000'),
('CL005', '45', '550000'),
('CL006', '32', '222000'),
('CL007', '54', '421000'),
('CL008', '64', '50000'),
('CL009', '23', '50000'),
('CL010', '145', '60000'),
('CL011', '34', '70000'),
('CL012', '66', '90000'),
('CL013', '160', '210000'),
('CL014', '222', '340000'),
('CL015', '245', '120000'),
('CL016', '52', '64000'),
('CL017', '12', '25000'),
('CL018', '5', '75000'),
('CL019', '67', '90000'),
('CL020', '75', '170000'),
('CL021', '56', '140000'),
('CL022', '50', '270000'),
('CL023', '86', '20000'),
('CL024', '94', '50000'),
('CL025', '100', '50000')

select * from MSCLOTH

INSERT INTO MSCUSTOMER VALUES
('CU001',	'Rafif',	'087811010208',	'jl jakarta timur no 5 14240',	'Male',	'muhammadrafif414@gmail.com',	'2002-01-11')
('CU002', 'Among Marbun', '08784212308', 'Jl Kb Jeruk Raya 66 RT 004/03, Jakarta', 'Male', 'Among.Marbun@yahoo.com', '2000-07-11'),
('CU003', 'Umaya Putra', '081232132208', 'Jl Dr Saharjo 90, Dki Jakarta', 'Female', 'Umaya,Putra@yahoo.com', '2000-11-23'),
('CU004', 'Cinthia Pertiwi', '08321010208', 'JL Hidup Baru No. 25, Pademangan', 'Female', 'Cinthia@gmail.com', '1999-07-26'),
('CU005', 'Ana Aryani', '087811432208', 'Jl Pancoran Indah III/11, Jakarta', 'Female', 'Aryani@yahoo.com', '2005-09-14'),
('CU006', 'Zalindra Mandasari', '087854310208', 'Jl Veteran 3/7 A, Dki Jakarta', 'Female', 'Zalindra4@gmail.com', '1990-04-16'),
('CU007', 'Silvia Hasanah', '081211010208', 'Jl Pasar Baru Slt 26, Dki Jakarta', 'Female', 'Silvia_Hasanah@gmail.com', '1998-03-04'),
('CU008', 'Karja Napitupulu', '083211010208', 'Jl Manggis Raya 45, Dki Jakarta, 11740', 'Female', 'Karja_Napitupulu@yahoo.com', '1999-02-10'),
('CU009', 'Mahmud Marpaung', '087854310208', 'Jl Hayam Wuruk 108, Dki Jakarta', 'Male', 'Marpaung@gmail.com', '2004-08-17'),
('CU010', 'Febi Wulandari', '087811076548', 'Kompl Villa Kapuk Mas Bl J-7/40, Dki Jakarta', 'Female', 'FebiWulandari@gmail.com', '2003-11-12'),
('CU011', 'Martaka Wibisono', '081211010208', 'Jl Thalib I 35-37, Dki Jakarta', 'Male', 'MartakaWibisono@yahoo.com', '2002-05-23')


select * from MSCUSTOMER


INSERT INTO MSMATERIAL VALUES
('MA001','Aero Cloth','50000','20'),
('MA002','Phasecotton','250000','67'),
('MA003','Premium Cotton','123000','12'),
('MA004','Bold Glass','453000','100'),
('MA005','Chaincloth','502000','45'),
('MA006','Nimble Paper','510000','34'),
('MA007','Faded Wool','500000','564'),
('MA008','Humming Leather','20000','65'),
('MA009','Pyrotwill','100000','52'),
('MA010','Volatile Denim','212000','45'),
('MA011','Gleaming Wool','76000','41'),
('MA012','Radiant Leather','84000','57'),
('MA013','Misery Leather','876500','26'),
('MA014','Archleather','32000','73'),
('MA015','Aegiswool','73000','235'),
('MA016','Fragile Brass','333000','72'),
('MA017','Half Cloth','32000','473'),
('MA018','Somber Knit','34000','23'),
('MA019','Supreme Velour','65000','73'),
('MA020','Ornate Fiber','87000','208'),
('MA021','Enchanted Cotton','11000','202'),
('MA022','Arctic Resin','21000','245'),
('MA023','Clear Tin','54000','74'),
('MA024','Great Dust','76000','84'),
('MA025','Abyss Satin','1000','92')

select * from MSMATERIAL

INSERT INTO MSPURCHASE VALUES
('PU001', 'SF001', 'SU003', '2022-01-01', 'PA003','MA002', '4'),
('PU002', 'SF001', 'SU003', '2022-01-01', 'PA003','MA023', '8'),
('PU003', 'SF005', 'SU004', '2021-11-26', 'PA001','MA022', '20'),
('PU004', 'SF007', 'SU006', '2021-11-24', 'PA002','MA011', '45'),
('PU005', 'SF002', 'SU005', '2021-11-18', 'PA004','MA010', '64'),
('PU006', 'SF002', 'SU005', '2021-11-18', 'PA004','MA001', '19'),
('PU007', 'SF004', 'SU007', '2021-11-09', 'PA006','MA020', '92'),
('PU008', 'SF003', 'SU008', '2021-11-01', 'PA007','MA019', '32'),
('PU009', 'SF008', 'SU009', '2021-10-29', 'PA008','MA018', '7'),
('PU010', 'SF011', 'SU010', '2021-10-21', 'PA005','MA015', '15'),
('PU011', 'SF005', 'SU002', '2021-10-14', 'PA006','MA013', '53'),
('PU012', 'SF013', 'SU001', '2021-10-08', 'PA001','MA004', '33'),
('PU013', 'SF013', 'SU001', '2021-10-08', 'PA001','MA008', '56'),
('PU014', 'SF011', 'SU011', '2021-10-01', 'PA009','MA016', '82')

select * from MSPURCHASE

INSERT INTO MSSTAFF VALUES
('SF001','Budi Narpati'	,'081411010208','Psr Tebet Tmr A','20',	'Male','1000000'),
('SF002', 'Soleh Najmudin', '087832123081', 'Jl Pasar Pagi 2', '21','Male', '1000000'),
('SF003', 'Zulfa Purwanti', '081235432208', 'Jl Laksda M','20', 'Female', '1000000'),
('SF004', 'Uli Maryati', '08321012318', 'Jl Menteng Raya', '26','Female', '2000000'),
('SF005', 'Nadine Anggraini', '081241432208', 'Jl Otto Iskanda','27', 'Female', '2000000'),
('SF006', 'Lili Yolanda', '087854623208', 'Jl Warakas 5','26' ,'Female', '2000000'),
('SF007', 'Ira Astuti', '081211010512', 'Jl Diponegoro 4','25' ,'Female', '2000000'),
('SF008', 'Daliman Hutapea', '083211010742', 'Jl Jati Raya', '31','Female', '3000000'),
('SF009', 'Ridwan Gunawan', '087854310853', 'JL. Sutomo 18','33', 'Male', '3000000'),
('SF010', 'Jelita Fujiati', '08781107674', 'Jl Senen Raya 1','35', 'Female', '4000000'),
('SF011', 'Sidiq Thamrin', '081211010734', 'Jl Kebayoran 2','37' ,'Male', '4000000'),
('SF012', 'Saka Putra', '081211010634', 'Jl Biru Laut 26', '36','Male', '5000000'),
('SF013', 'Bahuwarna', '081211010621', 'Jl Tanjungsari','42' ,'Male', '6000000')

select * from MSSTAFF

INSERT INTO MSSUPPLIER VALUES
('SU001', 'Among Hutasoit','0819870208','Kompl Cengkareng Indah Bl GB/1, Dki Jakarta'),
('SU002', 'Lili Yolanda','083211014312','Jl Tebet Dlm IV I A, Dki Jakarta'),
('SU003', 'Nadine Anggrainia','08231105123','Jl Ciputat Raya 163 Ged Buana, Dki Jakarta'),
('SU004', 'Uli Maryati','085311043228','Jl Platuk Donomulyo I B 11, Jawa Timur'),
('SU005', 'Prayitna Hidayanto','081411043251','Jl Tebet Brt X A 16, Dki Jakarta'),
('SU006', 'Rendy Najmudin','081211012858','Jl Raya Pluit Slt Bl B/9 Pluit Mall, Dki Jakarta'),
('SU007', 'Ibun Prakasat','081311073896','Psr Induk Beras Cipinang Bl DD/35 Pisangan Tmr'),
('SU008', 'Zulfa Purwanti','081812627208','Jl Gn Sahari Raya, Dki Jakarta'),
('SU009', 'Elma Padmasari','081411043273','Jl Barata Jaya XIX/64, Jawa Timur'),
('SU010', 'Ade Putra','081411053264','Jl H Sidin 1 42B RT 003/07, Dki Jakarta'),
('SU011', 'Taufan Narpati','08321610208','Jl Tj Pasir 2, Banten')

select * from MSSUPPLIER

INSERT INTO MSPAYMENTTYPE VALUES
('PA001', 'DANA'),
('PA002', 'OVO'),
('PA003', 'Go-Pay'),
('PA004', 'Shopee-Pay'),
('PA005', 'Cash'),
('PA006', 'Debit Card'),
('PA007', 'Credit Card'),
('PA008', 'Cryptocurrency'),
('PA009', 'Flazz')


select * from MSPAYMENTTYPE

INSERT INTO MSSALES VALUES 
('SA001', 'SF013', 'CU003', '2021-11-23','PA008','CL003','1'),
('SA002', 'SF010', 'CU002', '2021-11-23','PA008','CL004','1'),
('SA003', 'SF001', 'CU005', '2021-11-26','PA005','CL006','2'),
('SA004', 'SF003', 'CU007', '2021-11-26','PA003','CL012','2'),
('SA005', 'SF004', 'CU011', '2021-11-30','PA004','CL024','5'),
('SA006', 'SF009', 'CU010', '2021-12-03','PA005','CL025','3'),
('SA007', 'SF012', 'CU004', '2021-12-09','PA006','CL012','4'),
('SA008', 'SF011', 'CU007', '2021-12-19','PA007','CL021','1'),
('SA009', 'SF005', 'CU004', '2021-12-25','PA009','CL018','1'),
('SA010', 'SF005', 'CU008', '2021-12-28','PA001','CL015','3'),
('SA011', 'SF006', 'CU006', '2021-12-31','PA002','CL010','5'),
('SA012', 'SF007', 'CU009', '2022-01-01','PA007','CL009','4'),
('SA013', 'SF002', 'CU001', '2022-01-01','PA008','CL004','3'),
('SA014', 'SF008', 'CU002', '2022-01-04','PA009','CL001','2'),
('SA015', 'SF001', 'CU006', '2022-01-04','PA004','CL017','2')

select * from MSSALES