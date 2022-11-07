create database movies;
use movies;

select * from movie_table;

create table movie_table(id int, movie_name varchar(30), ticket_price int, location varchar(50), hero varchar(50), budget bigint);

select * from movie_table;

insert into movie_table values(1,'kantara',200,'navarang','rishabshetty',500);
insert into movie_table values(2,'KGF',300,'PVR','yash',1000);
insert into movie_table values(3,'charlie777',400,'orion', 'rakshitshetty',600);
insert into movie_table values(4,'galipata2',600,'minakshi', 'ganesh',800);

Alter table movie_table ADD column director varchar(20) default 'shubham';

select * from movie_table;

update movie_table set director = 'swati' WHERE id = 1;
select * from movie_table;

update movie_table set director = 'swati' WHERE id = 1;
select * from movie_table;

create table movie_dup as select * from movies;
select * from movie_dup;

select * from movie_table where director = 'shubham' AND id = 3;

select * from movie_table where id = 1 OR id = 2;

select * from movie_table where id in(1,2,3); 

select * from movie_table where id  not in (1,2);

select * from movie_table where id between 0 and 1;

select * from movie_table ORDER BY id desc;
select * from movie_table ORDER BY  id asc;


select count(*) AS no_of_rows from movie_table;
select count(*) from movie_table;
select sum(ticket_price) from movie_table;
select sum(budget) from movie_table;

select max(ticket_price) from movie_table;
select max(budget) from movie_table;
select max(hero) from movie_table;
select max(location) from movie_table;
select max(ticket_name) from movie_table;


select min(ticket_price) from movie_table;
select min(ticket_name) from movie_table;
select min(budget) from movie_table;


select avg(ticket_price) from movie_table;
select avg(budget) from movie_table;


select * from movie_table;
select * from movie_table where director = 'shubham' and id = 30;

select * from  movie_table order by id;
select * from movie_table where hero like 'r%';
select * from movie_table where hero like 'h%';
select * from movie_name where hero like 'k%';
select * from movie_table where hero like 'g%';
select * from movie_table where hero like 'c%';
select hero from movie_table where hero like 'g%';


select hero from movie_table where hero like '%h';
select * from movie_table where hero like '%e';
select * from movie_table where hero like '%7';
select * from movie_table where hero like '%a';
select * from movie_table where hero like '%e';


select * from movie_table where hero like 'r%a%';
select * from movie_table where hero like 'k%i%';
select * from movie_table where hero like 'g%f%';
select hero from movie_table where hero like 'y%a%';


select * from movie_table where hero between 'a' and 'k';
select * from movie_table where hero between 'i' and 'm';
select * from movie_table where hero between 'c' and 'e';
select * from movie_table where hero between 'a' and 's';
select * from movie_table where hero between 'g' and 'p';


select UPPER(movie_name) from movie_table;
select LOWER(movie_name) from movie_table;
select LOWER(location) from movie_table;
select LOWER(hero) from movie_table;
select LOWER(director) from movie_table;


select CONCAT(movie_name, director) as together from movie_table;
select CONCAT(movie_name, director,hero) as together from movie_table;
select CONCAT(movie_name, director,hero,budget) as together from movie_table;
select CONCAT(director,hero) as together from movie_table;
select CONCAT(movie_name, director,hero,location) as together from movie_table;


select INSTR('XWORKZODC' , 'K') AS position;
select INSTR('abcdefghijklmnopqrstuvwxyz','o') as position;
select INSTR('BGMIT', 'b') as position;
select INSTR('sahana','a') as position;


select substr('BANGALORE' , 4,4) AS position;
select substr(movie_name, 3,5) from movie_table;
select substr(hero, 1,5) from movie_table;
select substr(director,2,7) from movie_table;



















