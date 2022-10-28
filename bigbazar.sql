create database bigbazar;
use bigbazar ; 

create table bigbazar_table(Sno varchar(50),Item varchar(50), Item_weight int(10),year bigint, Item_rate int(10), rate_level varchar(50));
select * from bigbazar_table;

insert into bigbazar_table values(1, 'potato', 4 , 2022 , 500 , 'high'); 
insert into bigbazar_table values(2, 'brinjal', 3 , 2021 , 600 , 'Medium');
insert into bigbazar_table values(3, 'tomato', 6 , 2022 , 100 , 'Low');
insert into bigbazar_table values(4, 'ginger', 1 , 2020 , 200 , 'high');
insert into bigbazar_table values(5, 'apple', 4 , 2021 , 700 , 'high');
insert into bigbazar_table values(6, 'orange', 3 , 2022 , 300 , 'Medium');
insert into bigbazar_table values(7, 'ata', 7 , 2020 , 750 , 'high');
insert into bigbazar_table values(8, 'Peanuts', 5 , 2021 , 500 , 'Medium');
insert into bigbazar_table values(9, 'sugar', 4 , 2022 , 400 , 'Medium');
insert into bigbazar_table values(10, 'tea powder', 1 , 2020 , 500 , 'high');
insert into bigbazar_table values(11, 'jeera', 1 , 2022 , 500 , 'Medium');
insert into bigbazar_table values(12, 'cabbage', 2 , 2022 , 100 , 'Low'); 
insert into bigbazar_table values(13, 'cucumber', 3 , 2021 , 600 , 'Medium');
insert into bigbazar_table values(14, 'capsicum', 6 , 2022 , 100 , 'Low');
insert into bigbazar_table values(15, 'beans', 1 , 2020 , 200 , 'high');
insert into bigbazar_table values(16, 'grapes', 4 , 2021 , 700 , 'high');
insert into bigbazar_table values(17, 'pear', 3 , 2022 , 300 , 'Medium');
insert into bigbazar_table values(18, 'pomegranate', 7 , 2020 , 750 , 'high');
insert into bigbazar_table values(19, 'jaggery', 5 , 2021 , 500 , 'Medium');
insert into bigbazar_table values(20, 'cinnamon', 4 , 2022 , 400 , 'Medium');
insert into bigbazar_table values(21, 'cloves', 1 , 2020 , 500 , 'high');
insert into bigbazar_table values(22, 'cumin', 1 , 2022 , 500 , 'Medium');

alter table bigbazar_table add area varchar(50) ;
alter table  bigbazar_table drop column area;
alter table bigbazar_table Add location varchar(30) ;

insert into bigbazar_table(location) values('banglore');

 alter table bigbazar_table Add city varchar(30) ;
 
update bigbazar_table set Item = 'ladies finger' where Item='vegetables';
update bigbazar_table set Item_weigth ='4' where Item = 'tomato';
update bigbazar_table set Item_weigth ='1' where Item = 'ginger';
update bigbazar_table set year = 2019 where Item = 'potato';
update bigbazar_table set city = 'banglore' where Item = 'ginger';
update bigbazar_table set rate_level='high' where Item_weight = 'Peanut';
update bigbazar_table set grocery = 'lipstick' where Item_level = 'high';
update bigbazar_table set location = 'rajajinagar' where Item = 'orange';
update bigbazar_table set location = 'rajajinagar' where Item_rate = 500;
update bigbazar_table set location = 'BTM' where rate_level = 'Medium';
update bigbazar_table set location = 'jp nagar' where rate_level = 'high';
update bigbazar_table set location = 'jai nagar' where rate_level = 'Low';



  
delete from bigbazar_table where Sno = 3;
select * from bigbazar_table;

delete from bigbazar_table where Item = 'cumin';
delete from bigbazar_table where Item = 'cucumber'; 

alter table bigbazar_table Add Main_branch varchar(30) ;
alter table bigbazar_table Add grocery varchar(30) ;

delete from bigbazar_table where Item = 'pomegranate';
delete from bigbazar_table where Sno = 20;
delete from bigbazar_table where Sno = 5;





