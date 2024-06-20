create database worker
use worker;

create table worker(
worker_id int primary key not null,
firstname varchar(20),
lastname varchar(20),
salary int,
joining_date date,
department varchar(10));


insert into worker (worker_id,firstname,lastname,salary,joining_date,department) values
(4,"Amitabh","Singh",500000,"2014-02-20","Admin"),
(5,"Vivek","Bhati",500000,"2014-06-11","Admin"),
(6,"Vipul","Diwan",200000,"2014-06-11","Account"),
(7,"Satish","Kumar",75000,"2014-01-20","Account"),
(8,"Geetika","Chauhan",90000,"2014-04-11","Admin");

select * from worker;


/* 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending*/

select firstname, department from worker
order by firstname asc,
department desc;

/* 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
from the Worker table. */

select * from worker where firstname in ("Vipul" , "Satish");

/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets.*/

 select * from worker
 where firstname like "-----h";
 
 /*. Write an SQL query to print details of the Workers whose SALARY lies between 1.*/
 
 select * from worker 
 where salary between 100000 and 200000;
 
 /* 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */
 select department,count(department) as duplicate_value,salary
 from worker
 group by department,salary
 having count(department)>1;
 
 /*. Write an SQL query to show the top 6 records of a table.*/
 
 select * from worker
 order by worker_id asc
 limit 6;
 
 /*7. Write an SQL query to fetch the departments that have less than five people in them. */
 
 select department, count(*) as num_people
from worker
group by department 
having count(*) < 5;


/*8. Write an SQL query to show all departments along with the number of people in there.*/
 select department, count(*) as num_people
from worker
group by department
order by count(*) desc;


/*. Write an SQL query to print the name of employees having the highest salary in each 
department. */

select firstname, department,max(salary)
from worker
group by department,firstname
order by max(salary) desc;









 
 