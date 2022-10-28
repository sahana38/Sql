create database series;
use series;


create table serial(id int null unique, name varchar(20) unique, channels varchar(20), timings time, no_of_episodes int, check (no_of_episodes >=1036));
select * from serial;
insert into serial values(1, 'Agnisakshi', 'colors kannada', current_time(),1036); 
insert into serial values(2, 'jotejoteyali', 'Zee kannada', current_time(),444); 
insert into serial values(3, 'mahabharat', 'Uday TV', current_time(),1021); 

/*Distinct*/

select distinct(

