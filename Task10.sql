use sneha;

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
INSERT INTO common_wealth_games VALUES(4, 'Badminton', 14, 'Cheena', 40, 'sea-woon', 6, 8, 'oppo', 'Shangai', 4, 8, 11, 'Shehanzai', 'Afghanistan', 'Afghanistan','Rehan ali', 'France', 'team Afghastian', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(5, 'Boxing ', 15, 'America', 48, 'Robert', 7, 9, 'renold', 'St.jhons street', 5, 8, 12, 'America', 'Newzeeland', 'Newzeeland','Syed khan', 'Japan', 'team Newzeeland', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(6, 'Lawn Bowls', 16, 'Australia', 56, 'Zukeburg', 10, 10, 'redbull', 'machado', 6, 8, 13, 'Australia', 'Cheena', 'Cheena','Xiao un', 'Cheena', 'team Cheena', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(7, 'Netball ', 17, 'Pakistan', 85, 'Alladdin', 3, 11, 'stag', 'Alistan', 7, 8, 14, 'Pakistan', 'South-korea', 'Pakistan','Muskan', 'Turki', 'team Pakistan', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(8, 'Rugby 7s', 18, 'Afghanistan', 96, 'Mahammad', 13, 13, 'redmi', 'Zohail', 8, 8, 5, 'Afghanistan', 'Nizeria', 'Nizeria','Sehena', 'Paris', 'team Nizeria', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(9, 'Hockey', 19, 'Maleshia', 63, 'Rehan', 12, 14, 'cococola', 'Levana', 9, 8, 15, 'Maleshia', 'West-indies', 'West-indies','Crister', 'Jermany', 'team west-indies', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(10, 'Weightlifting', 20, 'Nizeria', 32, 'Vicenzo', 16, 12, 'Scotch', 'leggo', 10, 8, 16, 'Nizeria', 'south-indies', 'south-indies','libour', 'Finland', 'team South-indies', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(11, 'Squash', 21, 'West-Indies', 47, 'Krona', 19, 4, 'king fisher', 'Stadan', 11, 8, 17, 'West-indies', 'England', 'England','Ghockberk', 'Italy', 'team England', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(12, 'Swimming', 22, 'South-Korea', 95, 'Le min ho', 20, 19, 'twinkle', 'Bhagthan', 12, 8, 18, 'South-korea', 'Bhutan', 'Bhutan','Felix', 'Spain', 'team Bhutan', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(13, 'Basketball', 23, 'South-Africa', 32, 'Yanosh', 18, 18, 'lenovo', 'Swtart', 13, 8, 19, 'South-africa', 'USA', 'USA','Cris', 'Greece', 'team USA', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(14, 'Shooting-Pistol', 24, 'NewzeeLand', 75, 'Peter', 29, 17, 'Hp', 'giddo', 14, 8, 20, 'Newzeeland', 'Japan', 'Japan','Asley', 'UK', 'team France', 'Australia', 'International');
INSERT INTO common_wealth_games VALUES(15, 'Canoeing', 25, 'England', 39, 'Harris', 20, 21, 'Loreal', 'Sannalia', 15, 8, 21, 'England', 'France', 'France','Henry', 'Holand', 'team ', 'Australia', 'International');