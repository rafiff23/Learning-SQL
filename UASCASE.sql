--1
select [Participant]=p.PFirst_Name +' '+ p.PLast_Name, [Course] = c.Course_Name, [Level] = c.Level
from Course AS C inner join Client AS CL
ON C.Client = Cl.Client_ID
inner join Participant P
on Cl.Client_ID = p.Client_ID
where c.Level = 'Advance' and c.Course_Name = 'SQL Server'

--2
select [Teacher ID] = t.Teacher_ID,[Teacher Name]=t.First_Name + ' ' + t.Last_Name, [Course] = c.Course_Name
from Course AS C inner join Teacher AS T
on c.Teacher = t.Teacher_ID
where CO.Course_Name = 'Project Management dan Leadership'

--3
create view ActiveParticipant 
as 
select [Participant]=P.Participant_ID, [Duration]= CAST(c.start_date AS Varchar) + ' - ' +CAST(c.end_date as Varchar), [Status] = o.status 
from OngoingCourse AS O join Course C on o.Course_ID = c.Course_ID 
join Participant P on P.Participant_ID = o.Participant_ID
where MONTH (start_date) = 01 and o.status = 'Active'
group by p.Participant_ID, c.start_date, c.End_date, o.status
go

select * from ActiveParticipant 

--4
create trigger message
On participant 
after insert, update
as 
begin
	print 'Data has been recorded' 
end
go
--
begin tran 
insert into Participant values
('PP157', 'Divad', 'Drof', '+6286161117', 'Divad@mail.com', 'C11')
rollback
select * from Participant