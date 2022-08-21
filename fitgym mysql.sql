create database kinggymhouse;
use kinggymhouse;

create table StaffDetails (
StaffID int(12) auto_increment primary key,
BranchID int(10),
FirstName char(50),
LastName varchar(40),
Designation char(50),
Address varchar(60),
Phone_num varchar(50)
);
 
create table MemberDetails (
MemberID int(14) auto_increment primary key,
FirstName varchar(12),
LastName varchar(33),
Gender char(23),
Address varchar(22),
Phone_Num varchar(50),
PlanID int(33)
);

create table PlanDetails (
PlandID int(20) auto_increment primary key,
Plan_Type varchar(49),
Plan_Fee varchar(22)
);

create table Booking (
FacilityID int(15),
Desired_Time time,
Desired_Day date,
Actual_Num varchar(40),
Max_Num varchar(55),
Booking_Status varchar(33),
PlanID int(10),
MemberID int(10),
StaffID int(10));


create table revenue (
PaymentID int(12) auto_increment primary key,
MemberID int(14),
PaymentDate varchar(22),
PaymentMethod varchar(12),
CC_NUM varchar(13),
check_Num varchar(22),
PaymentStatus varchar(33));


alter table  MemberDetails add foreign key (PlanID) references plan(PlanID);
alter table  Bookings add foreign key (StaffID) references StaffDetails(StaffID);
alter table Bookings add foreign key (MemberID) references MemberDetails(MemberID);
