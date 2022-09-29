create database GoTraining 

create table Client(
	Client_ID char (3) check (Client_ID like 'C[0-9][0-9]')primary key,
	Company_Name varchar (20) not null,
	Com_Address varchar (20) not null,
	Com_TelpNumber varchar (20) not null,
	Industry Varchar (20) not null
)

Create Table Participant(
	Participant_ID char (5) check (Participant_ID like 'PA[0-9][0-9][0-9]')primary key,
	PFirst_Name Varchar (10) not null,
	PLast_Name varchar (20) not null,
	Phone_Number varchar (20) not null,
	Participant_email varchar (20)not null,
	Client_ID char (3) foreign key references Client(Client_ID)
)


Create Table Teacher (
	Teacher_ID char (5) check (Teacher_ID like 'TE[0-9][0-9][0-9]') primary key,
	First_Name Varchar (10) not null,
	Last_Name varchar (20) not null,
	Language1 varchar (20) not null,
	Language2 varchar (20) not null,
	DOB date not null,
	PhoneNumber varchar (20) not null,
	Address varchar (20) not null,
	Email varchar (20) not null
)

Create Table Course(
	Course_ID char (5) check (Course_ID like 'CO[0-9][0-9][0-9]')primary key,
	Course_Name varchar (50) not null,
	Language varchar (20) not null,
	Level varchar (20) not null,
	Course_length_Hours varchar (10) not null,
	Course_length_weeks varchar (10) not null,
	start_date date not null,
	End_date date not null,
	Location varchar (20) not null,
	Teacher char (5) foreign key references Teacher(Teacher_ID), 
	Client char (3) foreign key references Client(Client_ID)
)

Create Table OngoingCourse(
	Course_ID char (5) not null,
	Participant_ID char (5) not null,
	status varchar (20) not null,
	foreign key (Course_ID) References Course(Course_ID),
	foreign key (Participant_ID) References participant(Participant_ID),
	constraint PK Primary Key (Course_ID, Participant_ID) 
)


use GoTraining

insert into Client Values
('C12', 'PT.SENTOSA', 'Jakarta', '+6281259490921', 'Mobil'),
('C11', 'PT.AJAIB', 'Semarang', '+628112394502', 'Motor'),
('C10', 'PT.LANCER', 'Malang', '+628154901302', 'Tekstil')

insert into Participant Values
('PA152', 'Sarah', 'Bianca', '+6286161717', 'Sarah@mail.com', 'C12'),
('PA154', 'Kendall', 'Jenner', '+62856171611', 'Kendall@mail.com', 'C12'),
('PA432', 'Amara', 'Sophie', '+62815625416', 'Amara@mail.com', 'C11'),
('PA651', 'Aurora', 'Ribero', '+62816161719', 'Aurora@mail.com', 'C10')

insert into Teacher Values
('TE001', 'Ghea', 'Azani','Bahasa','English','2002-09-02','+628616171231','Jakarta','Ghea@mail.com'),
('TE002', 'Yoriko', 'Angeline','Bahasa','Spanish','2002-01-02','+62856171123','Semarang','Yoriko@mail.com'),
('TE003', 'Keishabel', 'Marsya','Bahasa','France','2002-05-02','+62815625123','Malang','Marsya@mail.com'),
('TE004', 'Belike', 'Monica','Bahasa','English','2002-12-02','+62816161123','Jakarta','Monica@mail.com')

insert into Course Values
('CO152','Algorithm', 'English','Advance','36 Hours','1 Weeks','2022-01-11','2022-01-18','Jakarta','TE001','C12'),
('CO154','Database','Bahasa','Advance','36 Hours','1 Weeks','2022-01-11','2022-01-18','Semarang','TE002','C12'),
('CO432','SQL Server','Bahasa','Advance','36 Hours','1 Weeks','2022-01-01','2022-01-08','Bandung','TE003','C10'),
('CO651','Project Management dan Leadership','English','Advance','36 Hours','1 Weeks','2022-01-01','2022-01-08','Jakarta','TE004','C11')
('CO108','SQL Server','English','Expert','6 Hours','3 days','2022-03-01','2022-03-08','Jakarta','TE002','C12'),
('CO109','Project Management dan Leadership','English','Expert','14 Hours','3 days','2022-03-01','2022-03-08','Jakarta','TE003','C15'),
('CO110','Project Management dan Leadership','English','Advance','14 Hours','1 Weeks','2022-03-01','2022-03-08','Jakarta','TE004','C10')

select * from Course

insert into OngoingCourse Values
('CO152','PP152','Active'),
('CO154','PP154','Active'),
('CO432','PP432','Active'),
('CO651','PP651','havent started yet')



