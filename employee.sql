create database employee;
use employee;

create table employee_table(Sno int(10), id int(30), name varchar(50), email varchar(60) ,city varchar(60) );

insert into employee_table values(1 ,12, 'sahana', 's@gmail.com', 'Banglore');  
select * from employee_table;

insert into employee_table values(1 ,12, 'pooja', 'pooja@gmail.com', 'Banglore');
insert into employee_table values(2 ,13, 'sneha', 'sneha@gmail.com', 'Ilkal');
insert into employee_table values(3 ,14, 'anu', 'anu@gmail.com', 'Bagalkot');
insert into employee_table values(4 ,15, 'mahananda', 'nanda@gmail.com', 'Bilagi');
insert into employee_table values(5 ,16, 'muskan', 'muskan@gmail.com', 'Mudhol');
insert into employee_table values(6 ,17, 'swati', 'swati@gmail.com', 'Banglore');
insert into employee_table values(7 ,18, 'vishala', 'vishala@gmail.com', 'Mudhol');
insert into employee_table values(8 ,19, 'sam', 'sam@gmail.com', 'Belgaum');
insert into employee_table values(9 ,20, 'geeta', 'geeta@gmail.com', 'Mudhol');
insert into employee_table values(1 ,21, 'suman', 'suman@gmail.com', 'Banglore');

select * from employee_table;

alter table employee_table  Add salary varchar(50);

select * from employee_table;

insert into employee_table values(1 ,12, 'pooja', 'pooja@gmail.com', 'Banglore');
insert into employee_table values(2 ,13, 'sneha', 'sneha@gmail.com', 'Ilkal');
insert into employee_table values(3 ,14, 'anu', 'anu@gmail.com', 'Bagalkot','70LPA');
insert into employee_table values(4 ,15, 'mahananda', 'nanda@gmail.com', 'Bilagi');
insert into employee_table values(5 ,16, 'muskan', 'muskan@gmail.com', 'Mudhol');
insert into employee_table values(6 ,17, 'swati', 'swati@gmail.com', 'Banglore');
insert into employee_table values(7 ,18, 'vishala', 'vishala@gmail.com', 'Mudhol');
insert into employee_table values(8 ,19, 'sam', 'sam@gmail.com', 'Belgaum');
insert into employee_table values(9 ,20, 'geeta', 'geeta@gmail.com', 'Mudhol');
insert into employee_table values(1 ,21, 'suman', 'suman@gmail.com', 'Banglore');

 select * from employee_table;









