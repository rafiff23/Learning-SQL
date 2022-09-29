use UniD1oX

--sales

begin tran
insert into MSCUSTOMER values
('CU012', 'Budiman', '081249395036', 'jl jeruk purut 13', 'Male', 'Budiman@yahoo.com', '1994-05-14')
rollback
select * from MSCUSTOMER

begin tran
insert into MSSALES values 
('SA016', 'SF005', 'CU009','2022-01-05','PA001', 'CL023', '2'),
('SA017', 'SF005', 'CU009','2022-01-05' ,'PA001', 'CL019', '2'),
('SA018', 'SF001', 'CU012','2022-01-06' ,'PA002', 'CL012', '1'),
('SA019', 'SF003', 'CU003','2022-01-07' ,'PA005', 'CL010', '1'),
('SA020', 'SF005', 'CU003','2022-01-07' ,'PA005', 'CL008', '1')
rollback

select * from MSSALES

begin tran 
update MSCLOTH
set CLOTH_STOCK = '84'
where CLOTH_ID = 'CL023'
update MSCLOTH
set CLOTH_STOCK = '65'
where CLOTH_ID = 'CL019'
update MSCLOTH
set CLOTH_STOCK = '65'
where CLOTH_ID = 'CL012'
update MSCLOTH
set CLOTH_STOCK = '144'
where CLOTH_ID = 'CL010'
update MSCLOTH
set CLOTH_STOCK = '85'
where CLOTH_ID = 'CL008'
rollback

select * from MSCLOTH



--purchase
begin tran insert into MSSUPPLIER values
('SU012', 'Among Hutasoit', '081250238530', 'Jl Cinere Mall 1A, Dki Jakarta'),
('SU013','Dartono Marbun','081242304850', 'Psr Melawai Bl A Los 1, Dki Jakarta')
rollback

select * from MSSUPPLIER

begin tran insert into MSPURCHASE values 
('PU015', 'SF002', 'SU009','2022-01-02','PA003', 'MA011', '10'),
('PU016', 'SF004', 'SU002','2022-01-03' ,'PA004', 'MA013', '12'),
('PU017', 'SF012', 'SU012','2022-01-04' ,'PA008', 'MA006', '32'),
('PU018', 'SF010', 'SU013','2022-01-05' ,'PA009', 'MA009', '21'),
('PU019', 'SF009', 'SU004','2022-01-06' ,'PA005', 'MA020', '12'),
('PU020', 'SF007', 'SU010','2022-01-07' ,'PA007', 'MA015', '14')
rollback

select * from MSPURCHASE

begin tran 
update MSMATERIAL
set QUANTITY = '31'
where MATERIAL_ID = 'MA011'
update MSMATERIAL
set QUANTITY = '14'
where MATERIAL_ID = 'MA013'
update MSMATERIAL
set QUANTITY = '02'
where MATERIAL_ID = 'MA006'
update MSMATERIAL
set QUANTITY = '31'
where MATERIAL_ID = 'MA009'
update MSMATERIAL
set QUANTITY = '196'
where MATERIAL_ID = 'MA020'
update MSMATERIAL
set QUANTITY = '221'
where MATERIAL_ID = 'MA015'
rollback

select * from MSMATERIAL