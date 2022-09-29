use BASDAT

--NO 1
--convert char to int
begin tran
update peserta
set 
nilaihuruf = replace (nilaihuruf, 'A','4')
update peserta
set 
nilaihuruf = replace (nilaihuruf, 'B','3')
update peserta
set 
nilaihuruf = replace (nilaihuruf, 'C','2')
update peserta
set 
nilaihuruf = replace (nilaihuruf, 'D','1')
rollback
SELECT nilaihuruf from peserta

--Making View
create view DataMahasiswa
as
select [NIM]= m.nim, [Mata Kuliah] = ma.namaMK ,[Jumlah SKS] = ma.sks, 
[Bobot Nilai] =  p.nilaihuruf
from mahasiswa AS M inner join peserta as p on m.nim = p.nim
inner join kelas as k 
on k.idkelas = p.idkelas
inner join matakuliah as ma 
on ma.idmk = k.idmk
group by m.nim, ma.namamk, ma.sks, p.nilaihuruf, ma.sks
go

--result
select * from DataMahasiswa

--NO 2
--creating score sks
create view IPK
as 
select [NIM]= m.nim,[JumlahSKS] = ma.sks, 
[Bobot Nilai] =  p.nilaihuruf, [hasilKali] = ma.sks * p.nilaihuruf 
from mahasiswa AS M inner join peserta as p on m.nim = p.nim
inner join kelas as k 
on k.idkelas = p.idkelas
inner join matakuliah as ma 
on ma.idmk = k.idmk
group by m.nim, ma.namamk, ma.sks, p.nilaihuruf, ma.sks
go

--sum sks
create view IPK2
as 
select [NIM]= m.nim,[JumlahSKS] = sum(ma.sks)
from mahasiswa AS M inner join peserta as p on m.nim = p.nim
inner join kelas as k 
on k.idkelas = p.idkelas
inner join matakuliah as ma 
on ma.idmk = k.idmk
group by m.nim
go

--creating view
create view HasilIAkhirIPK
as
select [NIM] = m.nim,[Nama Mahasiswa] = m.namamhs ,[IPK] = cast(sum(i.hasilkali) as float) / 
cast(ipk.JumlahSKS as float)
from mahasiswa as M join ipk I on m.nim = i.nim
join IPK2 as ipk on ipk.nim = m.nim
group by m.nim, ipk.JumlahSKS, m.namamhs
go

--result
select * from HasilIAkhirIPK

--NO 3
--creating view
create view MatakuliahWajib
as
select [NIM] = m.nim, [Nama Mahasiswa] = m.namamhs
from mahasiswa AS M inner join peserta as p on m.nim = p.nim
inner join kelas as k 
on k.idkelas = p.idkelas
inner join matakuliah as ma 
on ma.idmk = k.idmk
where ma.sifat like 'Wajib'
group by m.nim, m.namamhs
go

--result
select *from MatakuliahWajib

--NO 4
--creating view
create view skripsi
as
select [NIM] = m.nim, [Nama Mahasiswa] = m.namamhs
from mahasiswa AS M inner join peserta as p on m.nim = p.nim
inner join kelas as k 
on k.idkelas = p.idkelas
inner join matakuliah as ma 
on ma.idmk = k.idmk
inner join IPK2 as I
on i.nim = m.nim
inner join HasilIAkhirIPK as H
on h.NIM = m.nim
where ma.namamk like 'Skripsi' and i.JumlahSKS >= 144 and h.IPK >= 2.75
group by m.nim, m.namamhs
go

--result
select * from skripsi

--result no 1 - 4
select * from DataMahasiswa
select * from HasilIAkhirIPK
select * from MatakuliahWajib
select * from skripsi