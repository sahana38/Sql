create database movie;
use movie;

select * from movie_table;

create table movies_table(id int, movie_name varchar(30), ticket_price int, location varchar(50), hero varchar(50), budget bigint);

select * from movies_table;

insert into movies_table values(1,'kantara',200,'navarang','rishabshetty',500);
insert into movies_table values(2,'KGF',300,'PVR','yash',1000);
insert into movies_table values(3,'charlie777',400,'orion', 'rakshitshetty',600);
insert into movies_table values(4,'galipata2',600,'minakshi', 'ganesh',800);

Alter table movies_table ADD column director varchar(20) default 'shubham';

select * from movies_table;

update movies_table set director = 'swati' WHERE id = 1;
select * from movies_table;

update movies_table set director = 'swati' WHERE id = 1;

update movies_table set location = 'BTM' where  movie_name = 'galipata2';
update movies_table set budget = '700' where  movie_name = 'galipata2';

update movies_table set location = 'BTM', ticket_price= 300 where  movie_name = 'galipata2';
update movies_table set location ='kormangala', movie_name='KGF2', budget=  800 where  movie_name = 'galipata2';

delete from movies_table where director = 'shubham';

delete from movies_table where id=1;
commit;
rollback;




