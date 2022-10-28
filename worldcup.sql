CREATE TABLE worldcup(id int not null, team_name varchar(20) unique , oppaonent varchar(20) , venue varchar(20), captain varchar(20));
create database Wrldcup;
use Wrldcup;
select * from  worldcup;

insert into worldcup values(1,'India','australia','sydney','rohit');
insert into worldcup values(3,'srilanka','England','Perth','butler');
INSERT INTO worldcup values(2,'NewZealand','southafrica','Melbourne','Millionson');
INSERT INTO worldcup values(2,'NewZealand','southafrica','Melbourne','Millionson');
insert into worldcup values(1,'null','australia','sydney','rohit');



