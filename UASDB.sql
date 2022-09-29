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
	Course_ID char (5) primary key,
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


