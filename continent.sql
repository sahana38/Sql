
create database cotinents;
use cotinents;

CREATE TABLE  continents(id int, name varchar(30),no_of_countries int,check(no_of_countries > 20 AND no_of_countries < 60) , population bigint, area varchar(30));
truncate table continents;

CREATE TABLE continents_info(id int, name varchar(30), no_of_countries int, check(no_of_countries > 20 AND no_of_countries < 60), population bigInt, area varchar(50));

INSERT INTO continents_info VALUES(101, 'Asia', 48, 4560667108, 44579000 );
INSERT INTO continents_info VALUES(102, 'Europe', 50, 746419440, 10180000 );
INSERT INTO continents_info VALUES(103, 'North America', 23, 579024000, 24709000);
INSERT INTO continents_info VALUES(104, 'South America', 22, 423581078, 17840000 );
INSERT INTO continents_info VALUES(105, 'Africa', 54, 1275920972, 30370000 );
INSERT INTO continents_info VALUES(106, 'Ociania', 24, 41570842, 8525989);
INSERT INTO continents_info VALUES(107, 'Antartica', 21, 1000, 14200000);


SELECT * FROM continents_info;
SELECT REVERSE(id) FROM continents_info;
SELECT REVERSE(name) FROM continents_info;
SELECT REVERSE(no_of_countries) FROM continents_info;
SELECT REVERSE(population) FROM continents_info;
SELECT REVERSE(area) FROM continents_info;

SELECT * FROM continents_info order by id desc limit 4;
SELECT * FROM continents_info order by name desc limit 3;
SELECT * FROM continents_info order by no_of_countries desc limit 5;
SELECT * FROM continents_info order by population desc limit 6;
SELECT * FROM continents_info order by area desc limit 2;

SELECT * FROM continents_info limit 4;
SELECT * FROM continents_info limit 2;
SELECT * FROM continents_info limit 3;
SELECT * FROM continents_info limit 5;
SELECT * FROM continents_info limit 6;

LOCK TABLE continents_info read;
UPDATE continents_info SET no_of_countries = 51 WHERE id = 101;
UNLOCK TABLES;

-----------------------------------------------------------------------------------------------------------------------
/*lpad*/
SELECT lpad('sneha', 10, 'A');
SELECT lpad('sahana', 7, 'A');
SELECT lpad('mahananda', 10, 'B');
SELECT lpad('swati', 12, 'C');
SELECT lpad('muskan', 8, 'D');

/*rpad*/
SELECT rpad('akash', 14, 's');
SELECT rpad('sahana', 10, 'c');
SELECT rpad('anu', 8, 'b');
SELECT rpad('supreet', 4, 'c');
SELECT rpad('darshan', 12, 'k');

/*Greatest*/
SELECT GREATEST(12, 34, 56, 867, 864, 862, 245);
SELECT GREATEST(34, 64, 86, 245, 908, 564, 356);
SELECT GREATEST(87, 34, 96, 67, 84, 5678, 345);
SELECT GREATEST(19, 24, 66, 787, 953, 675, 125);
SELECT GREATEST(54, 77, 90, 857, 899, 98, 106);

/*datediff*/
SELECT datediff('2022-09-30', '2021-09-12');
SELECT datediff('2022-06-10', '2020-04-15');
SELECT datediff('2020-09-29', '2020-07-11');
SELECT datediff('2022-03-25', '2022-04-18');
SELECT datediff('2022-05-29', '2022-03-4');

/*dayname*/
SELECT dayname('2022-12-31');
SELECT dayname('2021-10-31');
SELECT dayname('1977-03-13');
SELECT dayname('1986-07-25');
SELECT dayname('2003-10-30');

/*dayofyear*/
SELECT dayofyear('2022-05-30');
SELECT dayofyear('2021-04-29');
SELECT dayofyear('2020-03-28');
SELECT dayofyear('2019-02-27');
SELECT dayofyear('2018-01-26');

/*makedate: accept two parameters  WSyntax: select makedate(year,day)*/

SELECT makedate(2019,245);

/*Format : */

select format(567767.78677,2);

select format(34556.9777,6);
select format(56789.556,2);
select format(65876.98776,8);
select format(6634556.96540990,7);

/*DATE_ADD*/
select date_add('2022-12-7',interval 5 day);
select date_add('2022-12-7',interval -5 day);

select date_add('2022-10-9 09:11:30',interval 5 day);
select date_add('2022-11-6 06:10:56',interval -5 day);
select date_add('2022-12-7 10:11:08',interval 5 day);

select date_add('2022-08-8 10:45:28',interval 5 year);
select date_add('2022-06-7 11:10:06',interval -5 year);
select date_add('2022-12-7 09:10:56',interval 5 year);


select date_add('2022-07-7 09:10:56',interval 10 quarter);
select date_add('2022-09-25 09:01:02',interval -10 quarter);
select date_add('2022-12-7 09:10:56',interval 5 quarter);


select date_add('2022-12-7 12:56:56',interval 5 week);
select date_add('2022-12-7 04:28:56',interval -5 week);
select date_add('2022-12-7 09:10:56',interval 5 week);


select date_add('2022-12-7 11:10:23',interval 5 hour);
select date_add('2022-12-7 10:20:32',interval -5 hour);
select date_add('2022-12-7 09:10:56',interval 5 hour);


select date_add('2022-12-7 07:10:45',interval 5 second);
select date_add('2022-12-7 08:11:34',interval -5 second);
select date_add('2022-12-7 09:10:56',interval 5 second);


select date_add('2022-12-7 10:09:48',interval 5 minute);
select date_add('2022-12-7 12:10:06',interval -5 minute);
select date_add('2022-12-7 09:10:56',interval 5 minute);

/*SET OPERATORS: used to combine the data from two tables
1)UNION:combine the result set of 2 or more select queries and return the unique values.
2)UNION ALL*/

SELECT * FROM a;
SELECT * FROM b;

create table a(id int);
insert into a value(1),(2),(3),(4),(5),(6),(7);
select * from a;

create table b(id int);
insert into b value(1),(5),(8),(6),(7),(10);
select * from b;

select * from a
union
select * from b;

select * from a order by id asc
union
select * from b order by id asc;

create table metro(id int, m_name varchar(40), source varchar(60), dest varchar(60), ticket int);
select * from metro;

insert into metro values(1,'nammmetro','nagasandra','mejestic',20);
insert into metro values(2,'nimmmetro','rajajinar','kengeri',30);
insert into metro values(3,'joshmetro','Srirampura','Jpnagar',15);
insert into metro values(4,'sashmetro','peenya','Ichalkaranji',40);
insert into metro values(5,'shubhametro','lalbagh','mahalxmi layou',35);
insert into metro values(6,'haishmetro','vijanagar','bayppanhalli',20);
insert into metro values(7,'annakarmelmetro','Ilkal','banglore',20);
insert into metro values(8,'afrinmetro','mantriSquare','sandalsoap',20);
insert into metro values(9,'nammmetro','Hospete','yeshwantpura',20);

create table train(id int, name varchar(40),train_no bigint, src varchar(60), dest varchar(60));
select * from train;
insert into train value(1,'poojaExpress',6368,'Hospete','Bengaluru');
insert into train value(2,'veenaExpress',6747,'chennai','waynad');
insert into train value(3,'Akshayordinarytrain',7788,'coimbatore','Hyderabad');
insert into train value(4,'sahanaExpress',2898,'Bagalkote','Hoapete');
insert into train value(5,'shubhamExpress',8774,'Hospete','Bengaluru');
insert into train value(6,'haishExpress',3777,'Hospete','Bengaluru');
insert into train value(7,'snehaExpress',6368,'Hospete','Bengaluru');
insert into train value(8,'ManuExpress',6368,'Hospete','Bengaluru');
insert into train value(9,'Express',6368,'Hospete','Bengaluru');
insert into train value(10,'poojaExpress',6368,'Hospete','Bengaluru');

select * from train;

select id, m_name from metro
union
select id,name from train;

/*UNION ALL: it will give all the values including duplicate values*/

select id from metro
union all
select id from train;

/* TABLE :Commonwealthgames
column: id not null unique, game_name not null unique, no_of_playeres not null unique check >10, country_participated, no_of_medals not null unique,captain_name not null unique
,penalty_points,
bonus_points not null unique  ,sponsor,venue,team_rank,team_total_points primary key
,Player_ranking,winner_team,Runner_team,semi_final_team,
refree_name,host_country,qualifier_team_winner,qualifier_team_runner.

insert 30 table
perform:
1)GROUP BY
2)HAVING
3)LPAD
4)RPAD
5)AGG FUNCTIONS(COUNT, SUM, MAX,MIN,AVG)
6)LIKE operator for any 4 columns
7)in
8)BETWEEN
9)ORDER BY FOR 5 COLUMNS
10)REVERSE FOR 10 COLUMNS */

------------------------------------------------------------------

CREATE TABLE common_wealth_games(id int primary key, game_name varchar(30) not null unique ,no_of_players varchar(30) not null unique, check(no_of_players >10),
country_participated varchar(30) not null unique, no_of_medals int not null unique, captain_name varchar(30) not null unique,
penalty_points int not null unique, bonus_points int not null unique, sponser varchar(30) not null unique,
venue varchar(30) not null unique, team_rank int not null unique, team_total_points int not null unique,
player_ranking int not null unique, winner_team varchar(30) not null unique, runners_team varchar(30) not null unique,
semi_final_team varchar(30) not null unique, refree_name varchar(30) not null unique, host_country varchar(30) not null unique,
qualifier_team_winner varchar(30) not null unique, qualifier_team_runner varchar(30) not null unique, game_type varchar(30) not null);

INSERT INTO common_wealth_games VALUES(1, 'Cricket', 11, 'India', 45, 'virat_kohli', 9, 5, 'vivo', 'Banglore', 1, 8, 10, 'India', 'Australia', 'Australia','Sukha bose', 'India', 'team India', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(2, 'Football', 12, 'Africa', 50, 'Ronwen williams', 8, 6, 'fan', 'Africa', 3, 12, 12, 'Africa', 'India', 'India','Albert', 'Africa', 'Team Africa', 'Africa', 'National');
INSERT INTO common_wealth_games VALUES(3, 'Kabbaddi', 13, 'Bengalur bulls', 55, 'Pavan', 11, 7, 'vimal', 'Delhi', 2, 9, 13, 'Bengalur bulls', 'Tamil talivas', 'Benagur bulls','Ranveer sharma', 'Brezil', 'Bengalur bulls', 'Tamil talivas', 'International');
INSERT INTO common_wealth_games VALUES(4, 'Badminton', 14, 'Cheena', 40, 'sea-woon', 6, 2, 'oppo', 'Shangai', 4, 18, 11, 'Shehanzai', 'Afghanistan', 'Afghanistan','Rehan ali', 'France', 'team Afghastian', 'Cheena', 'National');
INSERT INTO common_wealth_games VALUES(5, 'Boxing ', 15, 'America', 48, 'Robert', 7, 9, 'renold', 'St.jhons street', 5, 17, 19, 'America', 'Newzeeland', 'Newzeeland','Syed khan', 'Japan', 'team Newzeeland', 'America', 'International');
INSERT INTO common_wealth_games VALUES(6, 'Lawn Bowls', 16, 'Australia', 56, 'Zukeburg', 10, 10, 'redbull', 'machado', 6, 15, 20, 'Australia', 'Cheena', 'Cheena','Xiao un', 'Cheena', 'team Cheena', 'Mexican', 'National');
INSERT INTO common_wealth_games VALUES(7, 'Netball ', 17, 'Pakistan', 85, 'Alladdin', 3, 11, 'stag', 'Alistan', 7, 14, 14, 'Pakistan', 'South-korea', 'Pakistan','Muskan', 'Turki', 'team Pakistan', 'Pakistan', 'International');
INSERT INTO common_wealth_games VALUES(8, 'Rugby 7s', 18, 'Afghanistan', 96, 'Mahammad', 13, 13, 'redmi', 'Zohail', 8, 6, 5, 'Afghanistan', 'Nizeria', 'Nizeria','Sehena', 'Paris', 'team Nizeria', 'Afghanistan', 'International');
INSERT INTO common_wealth_games VALUES(9, 'Hockey', 19, 'Maleshia', 63, 'Rehan', 12, 14, 'cococola', 'Levana', 9, 5, 15, 'Maleshia', 'West-indies', 'West-indies','Crister', 'Jermany', 'team west-indies', 'West-indies', 'National');
INSERT INTO common_wealth_games VALUES(10, 'Weightlifting', 20, 'Nizeria', 32, 'Vicenzo', 16, 12, 'Scotch', 'leggo', 10, 4, 16, 'Nizeria', 'south-indies', 'south-indies','libour', 'Finland', 'team South-indies', 'South-indies', 'International');
INSERT INTO common_wealth_games VALUES(11, 'Squash', 21, 'West-Indies', 47, 'Krona', 19, 4, 'king fisher', 'Stadan', 11, 3, 17, 'West-indies', 'England', 'England','Ghockberk', 'Italy', 'team England', 'England', 'International');
INSERT INTO common_wealth_games VALUES(12, 'Swimming', 22, 'South-Korea', 95, 'Le min ho', 20, 19, 'twinkle', 'Bhagthan', 12, 19, 18, 'South-korea', 'Bhutan', 'Bhutan','Felix', 'Spain', 'team Bhutan', 'Bhutan', 'National');
INSERT INTO common_wealth_games VALUES(13, 'Basketball', 23, 'South-Africa', 23, 'Yanosh', 18, 18, 'lenovo', 'Swtart', 13, 29, 29, 'South-africa', 'USA', 'USA','Cris', 'Greece', 'team USA', 'USA', 'International');
INSERT INTO common_wealth_games VALUES(14, 'Shooting-Pistol', 24, 'NewzeeLand', 75, 'Peter', 29, 17, 'Hp', 'giddo', 14, 16, 27, 'Newzeeland', 'Japan', 'Japan','Asley', 'UK', 'team France', 'France', 'International');
INSERT INTO common_wealth_games VALUES(15, 'Canoeing', 25, 'England', 39, 'Harris', 26, 21, 'Loreal', 'Sannalia', 15, 13, 21, 'England', 'France', 'France','Henry', 'Holand', 'team Holand ', 'Korea', 'National');

truncate table common_wealth_games;

select * from common_wealth_games;

INSERT INTO common_wealth_games VALUES(101, 'running', 11, 'bagalkot', 45, 'virat_kohli', 9, 5, 'vivo', 'Banglore', 1, 8, 10, 'India', 'Australia', 'Australia','Sukha bose', 'India', 'team India', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(102, 'longjump', 12, ' dharwad', 50, 'Ronwen williams', 8, 6, 'fan', 'Africa', 3, 12, 12, 'Africa', 'India', 'India','Albert', 'Africa', 'Team Africa', 'Africa', 'National');
INSERT INTO common_wealth_games VALUES(103, 'badminton', 13, 'Bengalur bulls', 55, 'Pavan', 11, 7, 'vimal', 'Delhi', 2, 9, 13, 'Bengalur bulls', 'Tamil talivas', 'Benagur bulls','Ranveer sharma', 'Brezil', 'Bengalur bulls', 'Tamil talivas', 'International');
INSERT INTO common_wealth_games VALUES(104, 'cricket', 14, 'bijapur', 40, 'sea-woon', 6, 2, 'oppo', 'Shangai', 4, 18, 11, 'Shehanzai', 'Afghanistan', 'Afghanistan','Rehan ali', 'France', 'team Afghastian', 'Cheena', 'National');
INSERT INTO common_wealth_games VALUES(105, 'football', 15, 'kaladagi', 48, 'Robert', 7, 9, 'renold', 'St.jhons street', 5, 17, 19, 'America', 'Newzeeland', 'Newzeeland','Syed khan', 'Japan', 'team Newzeeland', 'America', 'International');
INSERT INTO common_wealth_games VALUES(106, 'Lawn Bowls', 16, 'chichakandi', 56, 'Zukeburg', 10, 10, 'redbull', 'machado', 6, 15, 20, 'Australia', 'Cheena', 'Cheena','Xiao un', 'Cheena', 'team Cheena', 'Mexican', 'National');
INSERT INTO common_wealth_games VALUES(107, 'Canoeing ', 17, 'mudhol', 85, 'Alladdin', 3, 11, 'stag', 'Alistan', 7, 14, 14, 'Pakistan', 'South-korea', 'Pakistan','Muskan', 'Turki', 'team Pakistan', 'Pakistan', 'International');
INSERT INTO common_wealth_games VALUES(108, 'Rugby 7s', 18, 'davangere', 96, 'Mahammad', 13, 13, 'redmi', 'Zohail', 8, 6, 5, 'Afghanistan', 'Nizeria', 'Nizeria','Sehena', 'Paris', 'team Nizeria', 'Afghanistan', 'International');
INSERT INTO common_wealth_games VALUES(109, 'Hockey', 19, ' kustagi', 63, 'Rehan', 12, 14, 'cococola', 'Levana', 9, 5, 15, 'Maleshia', 'West-indies', 'West-indies','Crister', 'Jermany', 'team west-indies', 'West-indies', 'National');
INSERT INTO common_wealth_games VALUES(110, 'Weightlifting', 20, 'hospete', 32, 'Vicencvxzo', 16, 12, 'Scotch', 'leggo', 10, 4, 16, 'Nizeria', 'south-indies', 'south-indies','libour', 'Finland', 'team South-indies', 'South-indies', 'International');
INSERT INTO common_wealth_games VALUES(111, 'Squash', 21, 'ballary', 47, 'Krona', 19, 4, 'king fisher', 'Stadan', 11, 3, 17, 'West-indies', 'England', 'England','Ghockberk', 'Italy', 'team England', 'England', 'International');
INSERT INTO common_wealth_games VALUES(112, 'Swimming', 22, 'chamarajnagar', 95, 'Le min ho', 20, 19, 'twinkle', 'Bhagthan', 12, 19, 18, 'South-korea', 'Bhutan', 'Bhutan','Felix', 'Spain', 'team Bhutan', 'Bhutan', 'National');
INSERT INTO common_wealth_games VALUES(113, 'kabadi', 23, 'koppala', 23, 'Yanosh', 18, 18, 'lenovo', 'Swtart', 13, 29, 29, 'South-africa', 'USA', 'USA','Cris', 'Greece', 'team USA', 'USA', 'International');
INSERT INTO common_wealth_games VALUES(114, 'Shooting-Pistol', 24, 'NewzeeLand', 75, 'Peter', 29, 17, 'Hp', 'giddo', 14, 16, 27, 'Newzeeland', 'Japan', 'Japan','Asley', 'UK', 'team France', 'France', 'International');
INSERT INTO common_wealth_games VALUES(115, 'Netball', 25, 'England', 39, 'Harris', 26, 21, 'Loreal', 'Sannalia', 15, 13, 21, 'England', 'France', 'France','Henry', 'Holand', 'team Holand ', 'Korea', 'National');

truncate table common_wealth_games;

INSERT INTO common_wealth_games VALUES(101, 'running', 11, 'bagalkot', 45, 'virat_kohli', 9, 5, 'vivo', 'Banglore', 1, 8, 10, 'India', 'Australia', 'Australia','Sukha bose', 'India', 'team India', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(102, 'longjump', 12, ' dharwad', 50, 'Ronwen williams', 8, 6, 'fan', 'Africa', 3, 12, 12, 'Africa', 'India', 'India','Albert', 'Africa', 'Team Africa', 'Africa', 'National');
INSERT INTO common_wealth_games VALUES(103, 'badminton', 13, 'Bengalur bulls', 55, 'Pavan', 11, 7, 'vimal', 'Delhi', 2, 9, 13, 'Bengalur bulls', 'Tamil talivas', 'Benagur bulls','Ranveer sharma', 'Brezil', 'Bengalur bulls', 'Tamil talivas', 'International');
INSERT INTO common_wealth_games VALUES(104, 'cricket', 14, 'bijapur', 40, 'sea-woon', 6, 2, 'oppo', 'Shangai', 4, 18, 11, 'Shehanzai', 'Afghanistan', 'Afghanistan','Rehan ali', 'France', 'team Afghastian', 'Cheena', 'National');
INSERT INTO common_wealth_games VALUES(105, 'football', 15, 'kaladagi', 48, 'Robert', 7, 9, 'renold', 'St.jhons street', 5, 17, 19, 'America', 'Newzeeland', 'Newzeeland','Syed khan', 'Japan', 'team Newzeeland', 'America', 'International');
INSERT INTO common_wealth_games VALUES(106, 'Lawn Bowls', 16, 'chichakandi', 56, 'Zukeburg', 10, 10, 'redbull', 'machado', 6, 15, 20, 'Australia', 'Cheena', 'Cheena','Xiao un', 'Cheena', 'team Cheena', 'Mexican', 'National');
INSERT INTO common_wealth_games VALUES(107, 'Canoeing ', 17, 'mudhol', 85, 'Alladdin', 3, 11, 'stag', 'Alistan', 7, 14, 14, 'Pakistan', 'South-korea', 'Pakistan','Muskan', 'Turki', 'team Pakistan', 'Pakistan', 'International');
INSERT INTO common_wealth_games VALUES(108, 'Rugby 7s', 18, 'davangere', 96, 'Mahammad', 13, 13, 'redmi', 'Zohail', 8, 6, 5, 'Afghanistan', 'Nizeria', 'Nizeria','Sehena', 'Paris', 'team Nizeria', 'Afghanistan', 'International');
INSERT INTO common_wealth_games VALUES(109, 'Hockey', 19, ' kustagi', 63, 'Rehan', 12, 14, 'cococola', 'Levana', 9, 5, 15, 'Maleshia', 'West-indies', 'West-indies','Crister', 'Jermany', 'team west-indies', 'West-indies', 'National');
INSERT INTO common_wealth_games VALUES(110, 'Weightlifting', 20, 'hospete', 32, 'Vicencvxzo', 16, 12, 'Scotch', 'leggo', 10, 4, 16, 'Nizeria', 'south-indies', 'south-indies','libour', 'Finland', 'team South-indies', 'South-indies', 'International');
INSERT INTO common_wealth_games VALUES(111, 'Squash', 21, 'ballary', 47, 'Krona', 19, 4, 'king fisher', 'Stadan', 11, 3, 17, 'West-indies', 'England', 'England','Ghockberk', 'Italy', 'team England', 'England', 'International');
INSERT INTO common_wealth_games VALUES(112, 'Swimming', 22, 'chamarajnagar', 95, 'Le min ho', 20, 19, 'twinkle', 'Bhagthan', 12, 19, 18, 'South-korea', 'Bhutan', 'Bhutan','Felix', 'Spain', 'team Bhutan', 'Bhutan', 'National');
INSERT INTO common_wealth_games VALUES(113, 'kabadi', 23, 'koppala', 23, 'Yanosh', 18, 18, 'lenovo', 'Swtart', 13, 29, 29, 'South-africa', 'USA', 'USA','Cris', 'Greece', 'team USA', 'USA', 'International');
INSERT INTO common_wealth_games VALUES(114, 'Shooting-Pistol', 24, 'NewzeeLand', 75, 'Peter', 29, 17, 'Hp', 'giddo', 14, 16, 27, 'Newzeeland', 'Japan', 'Japan','Asley', 'UK', 'team France', 'France', 'International');
INSERT INTO common_wealth_games VALUES(115, 'Netball', 25, 'England', 39, 'Harris', 26, 21, 'Loreal', 'Sannalia', 15, 13, 21, 'England', 'France', 'France','Henry', 'Holand', 'team Holand ', 'Korea', 'National');

select * from common_wealth_games;

id ,   game_name,  no_of_players,   country_participated,   no_of_medals,   captain_name,   penalty_points,
 bonus_points,   sponser, venue, team_rank,
team_total_points,  player_ranking,  winner_team, 
runners_team,  semi_final_team,  refree_name,  
 host_country, qualifier_team_winner,
qualifier_team_runner,  game_type


SELECT id,game_name, count(game_name) from common_wealth_games group by game_name;
SELECT id,no_of_players, count(no_of_players) from common_wealth_games group by no_of_players;
SELECT id,country_participated, count(country_participated) from common_wealth_games group by country_participated;
SELECT id,no_of_medals, count(no_of_medals) from common_wealth_games group by no_of_medals;
SELECT id,captain_name, count(captain_name) from common_wealth_games group by captain_name;

SELECT id,penalty_points, max(penalty_points) from common_wealth_games group by penalty_points;
SELECT id,bonus_points, max(bonus_points) from common_wealth_games group by bonus_points;
SELECT id,sponsor, max(sponser) from common_wealth_games group by sponser;
SELECT id,venue, max(venue) from common_wealth_games group by venue;
SELECT id,team_rank, max(team_rank) from common_wealth_games group by team_rank;

SELECT id,team_total_points, min(team_total_points) from common_wealth_games group by team_total_points;
SELECT id,Player_ranking, min(Player_ranking) from common_wealth_games group by Player_ranking;
SELECT id,winner_team, min(winner_team) from common_wealth_games group by winner_team;
SELECT id,runners_team, min(runners_team) from common_wealth_games group by runners_team;
SELECT id,semi_final_team, min(semi_final_team) from common_wealth_games group by semi_final_team;

SELECT id,refree_name, sum(refree_name) from common_wealth_games group by refree_name;
SELECT id,host_country, sum(host_country) from common_wealth_games group by host_country;
SELECT id,qualifier_team_winner, sum(qualifier_team_winner) from common_wealth_games group by qualifier_team_winner;
SELECT id,qualifier_team_runner, sum(qualifier_team_runner) from common_wealth_games group by qualifier_team_runner;
SELECT id,game_type, sum(game_type) from common_wealth_games group by game_type;

SELECT id,penalty_points, avg(penalty_points) from common_wealth_games group by penalty_points;
SELECT id,bonus_points, avg(bonus_points) from common_wealth_games group by bonus_points;
SELECT id,sponser, avg(sponser) from common_wealth_games group by sponser;
SELECT id,venue, avg(venue) from common_wealth_games group by venue;
SELECT id,team_rank, avg(team_rank) from common_wealth_games group by team_rank;

------------------------------------------------------------------------------------------------------------------------------
/*HAVING*/
SELECT id,game_name, count(game_name) as count from common_wealth_games group by game_name having game_name;
SELECT id,no_of_players, count(no_of_players) as count from common_wealth_games group by game_name having no_of_players;
SELECT id,country_participated, count(country_participated) as count from common_wealth_games group by game_name having country_participated;
SELECT id,no_of_medals, count(no_of_medals) as count from common_wealth_games group by game_name having no_of_medals;
SELECT id,captain_name, count(captain_name) as count from common_wealth_games group by game_name having captain_name;

SELECT id,penalty_points, SUM(penalty_points) as count from common_wealth_games group by game_name having penalty_points;
SELECT id,bonus_points, SUM(bonus_points) as count from common_wealth_games group by game_name having bonus_points;
SELECT id,sponser, SUM(sponser)  as count from common_wealth_games group by game_name having sponser;
SELECT id,venue, SUM(venue) as count from common_wealth_games group by game_name having venue;
SELECT id,team_rank, SUM(team_rank) as count from common_wealth_games group by game_name having team_rank;

SELECT id,team_total_points, min(team_total_points) as count from common_wealth_games group by game_name having team_total_points;
SELECT id,Player_ranking, min(Player_ranking)  as count from common_wealth_games group by game_name having Player_ranking;
SELECT id,winner_team, min(winner_team)  as count from common_wealth_games group by game_name having winner_team;
SELECT id,runners_team, min(runners_team) from common_wealth_games group by game_name having runners_team;
SELECT id,semi_final_team, min(semi_final_team) as count from common_wealth_games group by game_name having semi_final_team;

SELECT id,refree_name, max(refree_name) as count from common_wealth_games group by game_name having refree_name;
SELECT id,host_country, max(host_country) as count from common_wealth_games group by game_name having host_country;
SELECT id,qualifier_team_winner, max(qualifier_team_winner) as count from common_wealth_games group by game_name having qualifier_team_winner;
SELECT id,qualifier_team_runner, max(qualifier_team_runner) as count from common_wealth_games group by game_name having qualifier_team_runner;
SELECT id,game_type, max(game_type) as count from common_wealth_games group by game_name having game_type;

SELECT id,team_total_points, avg(team_total_points) as count from common_wealth_games group by game_name having team_total_points;
SELECT id,Player_ranking, avg(Player_ranking)  as count from common_wealth_games group by game_name having Player_ranking;
SELECT id,winner_team, avg(winner_team)  as count from common_wealth_games group by game_name having winner_team;
SELECT id,Runner_team, avg(Runner_team) from common_wealth_games group by game_name having Runner_team;
SELECT id,semi_final_team, avg(semi_final_team) as count from common_wealth_games group by game_name having semi_final_team;

----------------------------------------------------------------------------------------------------------------
/*LPAD   RPAD*/
select lpad('BGMIT',10,'A');
select lpad('giddi',7,'M');
select lpad('sneha',7,'L');
select lpad('anu',11,'B');
select lpad('muskan',9,'A');

select rpad('mahananda',9,'b');
select rpad('sahana',8,'c');
select rpad('pooja',7,'g');
select rpad('nanda',8,'e');
select rpad('sneha',4,'t');

--------------------------------------------------------------------------------------------
/*LIKE*/
SELECT * FROM common_wealth_games WHERE host_country LIKE '%i'; 
SELECT * FROM common_wealth_games WHERE captain_name LIKE 'v%'; 
SELECT * FROM common_wealth_games WHERE sponser LIKE 'r%'; 
SELECT * FROM common_wealth_games WHERE venue LIKE 'b%'; 
SELECT * FROM common_wealth_games WHERE country_participated LIKE 's%'; 

----------------------------------------------------------------------------------------------
/*REVERSE*/
SELECT REVERSE(game_name) FROM common_wealth_games;
SELECT REVERSE(country_participated) FROM common_wealth_games;
SELECT REVERSE(captain_name) FROM common_wealth_games;
SELECT REVERSE(sponser) FROM common_wealth_games;
SELECT REVERSE(venue) FROM common_wealth_games;
SELECT REVERSE(team_rank) FROM common_wealth_games;
SELECT REVERSE(winner_team) FROM common_wealth_games;
SELECT REVERSE(runners_team) FROM common_wealth_games;
SELECT REVERSE(refree_name) FROM common_wealth_games;
SELECT REVERSE(host_country) FROM common_wealth_games;
-------------------------------------------------------------------------------------------------
/*ORDER BY*/
SELECT * FROM common_wealth_games order by id desc;
SELECT * FROM common_wealth_games order by id asc;
SELECT * FROM common_wealth_games order by game_name desc;
SELECT * FROM common_wealth_games order by sponser asc;
SELECT * FROM common_wealth_games order by host_country desc;

--------------------------------------------------------------------------------------------------
/* In */
SELECT * FROM common_wealth_games WHERE id IN(1,2,7,8);
SELECT * FROM common_wealth_games WHERE game_name IN('cricket', 'football', 'kabbaddi', 'hockey', 'swimming');
SELECT * FROM common_wealth_games WHERE host_country IN('india', 'america', 'pakistan');
SELECT * FROM common_wealth_games WHERE id IN(1, 13, 14);
SELECT * FROM common_wealth_games WHERE no_of_medals IN(40, 45, 60, 65);

-----------------------------------------------------------------------------------------------------
/*BETWEEN  AND*/
SELECT * FROM common_wealth_games WHERE id between 1 AND 8;
SELECT * FROM common_wealth_games WHERE game_name between 'kabbaddi' AND 'swimming';
SELECT * FROM common_wealth_games WHERE host_country between 'india' AND 'japan';
SELECT * FROM common_wealth_games WHERE id between 6 AND 13;
SELECT * FROM common_wealth_games WHERE no_of_medals between 85 AND 95;

---------------------------------------------------------------------------------
/*******   JOIN     ********/

create table c(id int);
insert into c values(1),(2),(3),(2),(4),(6),(1);
select * from c;

create table d(id int);
insert into d values(5),(2),(1),(6),(7),(8),(9);
select * from d;

/* syntax for inner join
select table1_name.column_name,table2_name.column_name, from table1 inner joiun table2 on
 tablename1.columnname = tablename1.columnname         (table employee)*/

select c.id, d.id from c inner join d on c.id = d.id;
select c.id, d.id from c inner join d on c.id = d.id;

select c.id as tablea, d.id as tableb from c inner join d on c.id = d.id;

create table s(id int, name varchar(30));
insert into s values(1,'sahana'),(2,'sneha'),(3,'Muskan'),(2,'anu'),(3,'mahananda'),(1,'anu'),(3,'vishala');
select * from s;

create table h(id int, name varchar(30));
insert into h values(2,'sahana'),(1,'sneha'),(3,'Muskan'),(2,'anu'),(3,'vishala'),(1,'anu'),(3,'vishala');
select * from h;

select s.id,s.name as tables, h.id,s.name as tableh from s left join h on s.id = h.id;

select s.id,s.name as tables, h.id,s.name as tableh from s right join h on s.id = h.id;

/*Left join :return the values from the left table and matching value fron the right table*/

select c.id as tablea, d.id as tableb from c left join d on c.id = d.id;

select c.id as tablea, d.id as tableb from c right join d on c.id = d.id;









