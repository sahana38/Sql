create database olympics;
use olympics;

create table olympic(id int not null, name varchar(20) unique, no_of_medals int unique, country varchar(20) unique, no_of_players int not null);

insert into olympic values(1,'bascket ball',4,'India', 11);
insert into olympic values(2,'Foot ball',2,'Australia', 9);
insert into olympic values(2,'basket ball',7,'Australia', 10);
insert into olympic values(3,'tenis',3,'srilanka', 2);
insert into olympic values(2,null,null,null, 9);
insert into olympic values(2,'Hand ball',7,'southAfrica', 8);


select * from olympic;

create table serials(id int null unique, name varchar(20) unique, no_of_episodes int, timings time);
select * from serials;
insert into serials values(1, 'Agnisakshi', 'colors kannada', 1036, current_time()); 