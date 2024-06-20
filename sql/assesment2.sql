create database school
use school

create table student(
stdid int primary key not null,
stdName varchar(45),
sex varchar(10),
percentage int,
class int,
sec varchar(2),
stream varchar(20),
DOB varchar(10));

insert into student (stdid,stdName,sex,percentage,class,sec,stream,DOB) values
(1001,"Surekha Joshi","Female",82,12,"A","Science","3/8/1998");


insert into student (stdid,stdName,sex,percentage,class,sec,stream,DOB) values
(1002,"MAAHI AGARWAL","Female",56,11,"C","Commerce","11/23/2008"),
(1003,"SANAM VERMA","Male",59,11,"C","Commerce","6/29/2006"),
(1004,"RONIT KUMAR","Male",63,11,"C","Commerce","11/5/1997"),
(1005,"DIPESH PULKIT","Male",78,11,"B","Science","14/9/2003"),
(1006,"JAHANVI PURI","Female",60,11,"B","Commerce","11/7/2008"),
(1007,"SANAM KUMAR","Male",23,12,"F","Commerce","3/8/1998"),
(1008,"SAHIL SARAS","Male",56,11,"C","Commerce","11/7/2008"),
(1009,"AKSHARA AGRAWAL","Female",72,12,"B","Commerce","10/1/1996"),
(1010,"STUTI MISHRA","Female",39,11,"F","Science","11/232008"),
(1011,"HARSH AGRAWAL","Male",42,11,"C","Science","3/8/1998"),
(1012,"NIKUNJ AGRAWAL","Male",49,12,"C","Commerce","28/06/1998"),
(1013,"AKRITI SAXENA","Female",89,12,"A","Science","11/23/2008"),
(1014,"TANI RASTOGI","Female",82,12,"A","Science","11/23/2008");



 select * from student;
 
 SELECT stdName, DOB FROM student;
 
 SELECT * FROM student WHERE percentage >= 80;
 
 
 SELECT stdName, stream, percentage from student WHERE percentage > 80; 
 
 SELECT * from student
 WHERE stream = "Science" AND percentage > 75; 