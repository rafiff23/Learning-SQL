Create Database Perpustakaan

create table BUKU1(
	Kode_Buku char (5) primary key,
	Judul varchar (40),
	Edisi INT,
	Kode_Penerbit char (2) Foreign key references Penerbit(Kode_Penerbit)
);

create table BUKU2(
	Kode_Buku char (5) Foreign key references BUKU1(Kode_buku),
	kode_rinci char (2),
	Tgl_Masuk date
);

create table PENGARANG(
	Kode_Buku char (5) Foreign key references BUKU1(Kode_buku),
	Nama_Pengarang varchar (20)
);

create table PENERBIT(
	Kode_Penerbit char (2) primary key,
	Nama_Penerbit varchar (20),
	Lokasi varchar (20)
);

use Perpustakaan

insert into BUKU1 Values
('M-001', 'Manajemen Database', '1', 'GM'),
('P-001', 'Pengenalan DBMS', '1', 'AO'),
('M-002', 'Manajemen Pemasaran', '1', 'CP'),
('M-003', 'Manajemen Database', '2', 'GM'),
('M-004', 'Manajemen Keuangan', '1', 'GM')

insert into BUKU2 Values
('M-001', 'C1','1997-12-20'),
('M-001', 'C2','1997-12-20'),
('M-001', 'C3','1997-12-20'),
('M-002', 'C1','1997-03-05'),
('M-003', 'C1','1998-10-16'),
('M-003', 'C2','1998/02/24'),
('M-004', 'C1','1998/06/05'),
('P-001', 'C1','1998/06/05'),
('P-001', 'C2','1998/06/05')

select * from buku2
insert into PENGARANG Values
('M-001','Riantiamo'),
('M-001','Joko Wardoyo'),
('M-002','Cahyo Kumolo'),
('M-003','Dian Puspa'),
('P-001','Dahlan')

insert into PENERBIT values
('GM','Gramedia','Jakarta'),
('AO','Andi Offset','Yogya'),
('CP','Cakrawala Persada','Solo'),
('BP','Banyumedia','Yogya')

--a
INSERT INTO PENGARANG (Kode_Buku, Nama_Pengarang) VALUES 
('M-004','Adi Yahya'), 
('M-002','Husman Almaini'),
('M-003', 'Yudi Susanto'),
('P-001', 'Agus Susilo');

select * from PENGARANG

INSERT INTO PENERBIT (Kode_Penerbit, Nama_Penerbit, Lokasi)
VALUES ('TB', 'Terbit Media', 'Jakarta'), 
('LI','Lantai Ilmu', 'Denpasar'),
('BD', 'Budi Agung', 'Semarang'),
('NP', 'Nilai Pancasila', 'Bogor');

select * from PENERBIT

--b
UPDATE PENERBIT
SET Lokasi='Yogyakarta'
WHERE Lokasi='Yogya';

select * from PENERBIT

--c
SELECT [Judul Buku]=B.Judul, [Nama Pengarang]=P.Nama_Pengarang, [Nama Penerbit]=PB.Nama_Penerbit
FROM BUKU1 as B INNER JOIN PENGARANG as P ON B.Kode_Buku=P.Kode_Buku
INNER JOIN PENERBIT as PB ON PB.Kode_Penerbit=B.Kode_Penerbit;

Create View ListBuku
AS
SELECT [Judul Buku]=B.Judul, [Nama Pengarang]=P.Nama_Pengarang, [Nama Penerbit]=PB.Nama_Penerbit
FROM BUKU1 as B INNER JOIN PENGARANG as P ON B.Kode_Buku=P.Kode_Buku
INNER JOIN PENERBIT as PB ON PB.Kode_Penerbit=B.Kode_Penerbit
group by B.Judul, P.Nama_Pengarang, PB.Nama_Penerbit
go

--result
SELECT * FROM ListBuku

--d
select [Judul Buku] = b.Judul
from BUKU1 as b join BUKU2 as bb on b.Kode_Buku = bb.Kode_Buku
where YEAR(Tgl_Masuk) > 1997
group by b.Judul

--e
select [Judul Buku]=b.Judul ,[Nama Pengarang]=p.Nama_Pengarang, [Nama Penerbit] = pe.Nama_Penerbit 
from BUKU1 as B inner join PENGARANG as p on b.Kode_Buku=p.Kode_Buku
inner join PENERBIT as PE on b.Kode_Penerbit = pe.Kode_Penerbit
inner join BUKU2 as bb on bb.Kode_Buku = b.Kode_Buku
GROUP BY b.Judul, p.Nama_Pengarang, pe.Nama_Penerbit
HAVING COUNT(bb.Kode_Buku) > 1

--f
select [Judul Buku] = b.Judul, [Edisi] = b.Edisi, [Nama Penerbit] = p.Nama_Penerbit
from BUKU1 as b join PENERBIT as p on b.Kode_Penerbit = p.Kode_Penerbit
where b.Edisi = 1 and p.Kode_Penerbit like 'GM'