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
