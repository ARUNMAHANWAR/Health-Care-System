create table adminclassified(username varchar2(20),password varchar2(20));

create table  univers_det(univid number(3) primary key,univname varchar2(20),univlocation varchar2(20),univaddress varchar2(20),webaddress varchar2(20));

create table  collage_det (collageid number(3) primary key,univid number(3),collagename varchar2(20),collagelocation varchar2(20),collageaddress varchar2(20),webaddress varchar2(20),aboutcollage varchar2(20),establisheddate varchar2(12));

create table  course_det (courseid number(3) primary key,collageid number(3),coursename varchar2(20),noofseat number(4),durationofcourse number(3),feedetail number(10,2),courcestartdate varchar2(20));

create table  sunday_cinema(theetorno number(2) primary key ,theatename varchar2(20),location varchar2(20),address varchar2(20),moviename  varchar2(20),movielanguage  varchar2(20),showtime1  varchar2(20), showtime2  varchar2(20),showtime3  varchar2(20),showtime4  varchar2(20),phoneno number(10),hero varchar2(20),movietype varchar2(20));

create table  matrimonial_det (Name varchar2(20),age number(3),mailid varchar2(20) primary key,gender varchar2(20),religion varchar2(20),martialstatus varchar2(20),dob  varchar2(20),height Number(8,2),occupation  varchar2(20),nameofres  varchar2(20),country  varchar2(20),eduqual  varchar2(20),contactnumber number);

create table rentals(houseno varchar2(20) primary key,ownersname varchar2(30),facilities varchar2(30),location varchar2(30),address varchar2(30),rent number(10,2),adavance number(10,2),city varchar2(30),contactno number);

create table realestate (flotno varchar2(20) primary key,ownersname varchar2(30),facilities varchar2(30),location varchar2(30),address varchar2(30),landacrs number(10,2),city varchar2(30),contassno number);

create table wheels (carcode varchar2(20) primary key,carmodel varchar2(30),costofcar number(10,2),usedsofor varchar2(20),contactper varchar2(30),contactno number,contactaddress varchar2(30),discription varchar2(30));

create table jobs (job_code number(15) Primary key, job_name varchar2(20),quali_req varchar2(30),skill_req varchar2(30),resp_req varchar2(40),exp_req number(5),vac_open number(4),createdby varchar2(40),
createdon varchar2(20),lastdate varchar2(20),status varchar2(20),location varchar2(20));

insert into adminclassified values('admin','admin');