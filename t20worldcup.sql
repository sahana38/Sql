
CREATE TABLE t20worldcup(id int not null, team_name varchar(20)  , oppaonent varchar(20), venue varchar(20), captain varchar(20));
create database t20Wrldcup;
use t20Wrldcup;
select * from  t20worldcup;
insert into t20worldcup values(1,'India','australia','sydney','rohit');
INSERT INTO t20worldcup (id,team_name,oppaonent,venue,captain) values(2,'NewZealand','southafrica','Melbourne','Millionson');