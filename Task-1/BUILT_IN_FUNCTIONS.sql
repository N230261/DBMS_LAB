create database playstoreDB;
use playstoreDB;
CREATE TABLE developers (
   Columnname VARCHAR(30),
   datatype varchar(30),
   size varchar(10),
   const varchar(30)
   );
insert into developers(ColumnName,datatype,size,const) Values('developerId','int','-','Primarykey');
insert into developers(ColumnName,datatype,size,const) Values('developername','varchar','60','not null');
insert into developers(ColumnName,datatype,size,const) Values('country','varchar','30',' ');
insert into developers(ColumnName,datatype,size,const) Values('foundedyear','int','-',' ');
drop database playstoreDB;
delete from developers;
drop table developers;
Select * from developers;

create table records (
   developerid int,
   developername varchar(30),
   country varchar(10),
   foundedyear int
   );
insert into records 
values
(101,'google LLC','USA',1998),
(102,'meta platforms','USA',2004),
(103,'spotify AB','sweden',2006),
(104,'canva pty ltd','australia',2012),
(105,'BYJUs','India',2011);
select * from records;

CREATE TABLE Publishers (
   ColumnName VARCHAR(30),
   datatype varchar(30),
   size varchar(10),
   const varchar(30)
   );
insert into Publishers 
values
('pubisherId','int','-','Primary Key'),
('publishername','varchar','60',' '),
('headoffice','varchar','40',' '),
('supportemail','varchar','60',' ');
Select * from Publishers;
create table pubrecord (
   publisherId int primary key,
   publishername varchar(30),
   headoffice varchar(30),
   supportemail varchar(30)
   );
drop table pubrecord;
insert into pubrecord
values
(201,'google play','california','support@google.com'),
(202,'samsung galaxy store','seoul','support@google.com'),
(203,'spotify AB','sweden','support@google.com'),
(204,'canva pty ltd','australia','support@google.com');
select * from pubrecord;

CREATE TABLE Categories (
   ColumnName VARCHAR(30),
   datatype varchar(30),
   size varchar(10),
   const varchar(30)
   );
insert into Categories 
values
('categoryId','int','-','Primary Key'),
('categoryname','varchar','40',' '),
('minimumage','int','-',' ');
Select * from Categories;
create table catrecord (
   categoryId int unique,
   categoryname varchar(30),
   MinimumAge int
   );
drop table catrecord;
insert into catrecord
values
(301,'education',3),
(302,'productivity',3),
(303,'music',12),
(304,'social',13),
(305,'gaming',16);
select * from catrecord;

CREATE TABLE Apps (
   ColumnName VARCHAR(30),
   datatype varchar(30),
   size varchar(10),
   const varchar(30)
   );
insert into Apps 
values
('AppId','int','-','Primary Key'),
('appname','varchar','60',' '),
('developerId','int','-',' '),
('publisherId','int','-',' '),
('categoryId','int','-',' '),
('rating','decimal','2,1',' '),
('downloads','int','-',' '),
('price','decimal','6,2',' ');
Select * from Apps;
create table apprecord (
    AppId int,
    appname varchar(30),
    developerId int,
	publisherId int,
    categoryId int,
    rating decimal(2,1),
	downloads int,
    price decimal(6,2)
   );
drop table Apps;
insert into apprecord
values
(1001,'google classroom',101,201,301,4.6,500000000,0),
(1002,'google keep',102,201,302,4.5,1000000000,0),
(1003,'instagram',103,201,304,4.4,500000000,0),
(1004,'spotify',104,201,303,4.5,1000000000,0),
(1005,'canva',105,201,302,4.7,500000000,0),
(1006,'byjus learning',106,201,301,4.3,1000000000,299),
(1007,'candy crush',107,204,305,4.6,1000000000,0),
(1008,'temple run',108,203,305,4.2,500000000,0);
select * from apprecord;
drop table apprecord;
insert into records
Values
(106,'OpenAI','USA',2015);
insert into catrecord
values
(306,'Artificial Intelligence',12);
insert into apprecord
values
(1009,'Chat GPT',103,204,306,4.6,100000000,0);
set SQL_SAFE_UPDATES=0;
update apprecord set rating = 4.5 where AppId=1008;
select * from apprecord where AppId=1008;
delete from records where developerid=105;
update pubrecord set supportemail='samsung@gmail.com' where publishername='samsung galaxy store' and pubisherId=202;
select supportemail from pubrecord where pubisherId=202;
select * from pubrecord;
insert into apprecord
values
(1010,'Perplexity',104,203,305,4.8,50000000,400),
(1011,'Claude',103,205,306,4.9,100000000,200);
update apprecord set price=199 where AppId=1006;
update apprecord set price=0.00 where AppId=1008;
select * from apprecord;
delete from catrecord where categoryId=303;
show tables;
select * from records;
select * from pubrecord;
select * from catrecord;
select * from apprecord;
