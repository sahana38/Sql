create database country;

use country;

create table country(Sno int, Id int, Population bigint, country varchar(50), no_of_states varchar(50),
state varchar(50), capitalcity varchar(50), dist varchar(50), Tq varchar(50), villages varchar(50),
famous_game varchar(50), Famous_city varchar(50), IPL_team_capt varchar(50), Pro_kbd_capt varchar(50), IPL_coach  varchar(50),
Pro_kbd_coach varchar(50), Ipl_team_name varchar(50), Pro_coach varchar(50),  State_capitalcity boolean,villages_in_state boolean);

INSERT INTO country values(1,  101, 123456789, "India", 34,"Karnataka", "Banglore", "Bagalkot", "Mudhol", "Chichkandi","Kabaddi", "Mysore", "Virat", "Pavan", "randhir singh","Rahul","Royal Challengers", "Banglore_bulls", TRUE,FALSE);
INSERT INTO country values(2,  102, 234567890, "Nepal", 35,"Rajastan", "Jaipur", "Bellary", "Raibag", "Katageri","cricket", "Badami", "Supreet", "Kartik", "sanjeev","Anil","CSK", "Patna Pirats", FALSE,TRUE);
INSERT INTO country values(3,  103, 345678901, "Banglbdesh", 36,"AP", "Hyderabad", "Belagavi", "Jamkhandi", "Jeeragal","throwball", "Ihole", "Amogh", "Kittu", "Khokhar","sachin","DC","Dabang Delhi", TRUE,FALSE);
INSERT INTO country values(4,  104, 456789012, "Buthan", 37,"UP", "Lucknow", "Bidar", "Hukkeri", "Kulali","v_ball", "Pattadkallu", "Adi", "Harshit", "srinivas","Arun","SRH", "Tamil Thalaivas", FALSE,TRUE);
INSERT INTO country values(5,  105, 567890123, "Maldives", 38,"Maharastra", "Mumbai", "Kolar", "Bhatkal", "shirol","TT", "Alamatti", "Vijay", "Prutvi", "ram mehar","Anu","MI", "Telugu titans", TRUE,FALSE);
INSERT INTO country values(6,  106, 678901234, "China", 39,"Punjab", "Chandigarh", "Mysore", "Gadag", "budni","badminton", "Hospete", "Ajay", "jeevan", "award","Rohit","KKR", "Jaipur Pnk Panthers", FALSE,TRUE);
INSERT INTO country values(7,  107, 789012345, "Sri Lanka", 40,"Assam", "Dispur", "Tumkur", "Hospete", "Shikkeri","Kho kho", "Shringeri", "Dharshan", "Rohit", "singh","gary","PBKS", "U mumba", TRUE,FALSE);
INSERT INTO country values(8,  108, 890123456, "Afghanistan", 41,"Tamil Nadu", "Chennai", "Raichur", "sirguppa", "Chippalkatti","Football", "Hornadu", "Girish", "Aryan", "balwan","Justin","GT", "Haryana Steelers", FALSE,TRUE);
INSERT INTO country values(9,  109, 901234567, "Pakistan", 42,"Tripura", "Agartala", "Udupi", "Aland", "Hangaragi","Hockey", "Agumbe", "Akash", "Arya", "balyan","John","RR", "Gujarat", TRUE,FALSE);
INSERT INTO country values(10, 110, 012345678, "Myanmar", 43,"Sikkim", "Gangtok", "Bidar", "Ramdurg", "kaladagi","tennis", "Dandeli", "Sagar", "Aditya", "ashan","Sanjay","KKR", "UP Yoddha", FALSE,TRUE);
select * from country;


create table farmings(Sno int,name varchar(50), Age int , Area varchar(50), Disability varchar(50),
 Household varchar(50), Education varchar(50),language varchar(50), migration varchar(50) , workers varchar(50), 
 state varchar(50), dist varchar(50) , crops varchar(50), profit varchar(50),  vegetables varchar(50),
 region varchar(50), community varchar(50),id int, State_capitalcity boolean,villages_in_state boolean);

INSERT INTO farmings values(1, "Anu", 34 , "siddapur", "sensory disability", 4, "Arts", "kannada", "ramdurg", "three", "Karnataka", "Bagalkot","maize" ,
						   "81 %", "Tomato" , "cook county" , "Waukegan" , 101 , TRUE, FALSE);
INSERT INTO farmings values(2, "Adi", 35, "katageri", "Phisical disability", 5, "Commerce", "hindi", "badami", "one", "Rajastan", "Bellary","ragi" ,
						  "91 %", "Onion", "Grow" , "Buffalo Grove" , 102 , FALSE, TRUE);
INSERT INTO farmings values(3, "saru", 36 , "guledgudda", "mental disability", 7, "un educated", "urdu", "Raibag", "two", "AP", "Belagavi","jowar" , "88.4 %", "Brinjal" , "county" , "Wheeling" , 103 , TRUE, FALSE);
INSERT INTO farmings values(4, "Ram", 37 , "Ilkal", "self-care disability", 6, "10th", "konkani", "Jamkhandi", "four", "UP", "Bidar","chana" , "82 %", "Ladies finger" , "cook " , "Wundelein" , 104 , FALSE, TRUE);
INSERT INTO farmings values(5, "geeta", 38 , "gorbhal", "sensory disability", 3, "puc", "tamil", "Hukkeri", "five", "Maharastra", "Kolar","wheet" , "77.6 %", "Potato" , "farming" , "Gurne" , 105 , TRUE, FALSE);
INSERT INTO farmings values(6, "veena", 39 , "sindagi", "employment disability", 9, "B.E", "English", "Bhatkal", "six", "Punjab", "Mysore","mung" , "73.6 %", "Lemon" , "animals" , "North" , 106 , FALSE, TRUE);
INSERT INTO farmings values(7, "raju", 40 , "sikkeri", "sensory disability", 8, "BSc", "telagu", "Mudhol", "eight", "Assam", "Tumkur","urddal" , "88 %", "Carrot" , "cook county" , "Chicago" , 107 , TRUE, FALSE);
INSERT INTO farmings values(8, "Abhi", 41 , "kalal", "sensory disability", 10, "B.com", "kannada", "Bhatkal", "seven", "Tamil Nadu", "Raichur","sugar cane" , "90 %", "Cucumber" , "cook county" , "Highland Park" , 108 , FALSE, TRUE);
INSERT INTO farmings values(9, "akash", 42 , "Ingalagi", "phisical disability", 11, "9th", "hindi", "Gadag", "nine", "Tripura", "Udupi","ground nuts" , "91 %", "Cabbage" , "counting" , "Round Lake" , 109 , TRUE, FALSE);
INSERT INTO farmings values(10, "Sagar", 43 , "yadahalli", "self-care disability", 2, "2nd pu", "malyalam", "Hospete", "ten", "Sikkim", "Bidar","pepper" , "92 %", "chilly" , "cooking" , "Vernon Hills" , 110 , FALSE, TRUE);
INSERT INTO farmings values(11, "Arya", 44 , "algundi", "mental disability", 7, "Sci", "kannada", "Jamkhandi", "eleven", "Karnataka", "Bagalkot","cloves" , "76 %", "Tomato" , "cook county" , "Harbor" , 111 , TRUE, FALSE);
select * from farmings;
ALTER TABLE country ADD COLUMN coacher varchar(30);
ALTER TABLE farmings ADD COLUMN loss_per int;

ALTER TABLE country RENAME COLUMN  Tq to Taluk;
ALTER TABLE farmings RENAME COLUMN state to state_name;

ALTER TABLE country MODIFY Id  bigInt;
ALTER TABLE farmings MODIFY Sno bigInt;

ALTER TABLE country DROP COLUMN coacher;
ALTER TABLE farmings DROP COLUMN loss_per;

UPDATE country SET state = 'Karnataka' WHERE Id = 107;
UPDATE farmings SET dist = 'Bagalkot' WHERE sponser = 'pepsi';

SELECT * FROM country WHERE id = 102 ;
SELECT * FROM farmings WHERE id = 110;

SELECT villages, Famous_city FROM country WHERE id = 103 AND Sno = 1;
SELECT crops FROM farmings WHERE Sno = 10 AND name = 'sagar';

SELECT  country, no_of_states FROM country WHERE dist = 'Bagalkot' OR Id = 101;
SELECT crops, migration FROM farmings WHERE workers = 1 OR name = 'Arya';
 
SELECT * FROM country ORDER BY id desc;
SELECT * FROM farmings ORDER BY Sno asc;

SELECT COUNT(*) FROM country;
SELECT COUNT(*) FROM farmings;

SELECT SUM(id) FROM country;
SELECT SUM(workers) FROM farmings;

SELECT MAX(no_of_states) FROM country;
SELECT MAX(id) FROM farmings;


SELECT MIN(no_of_states) FROM country;
SELECT MIN(Age) FROM farmings;

SELECT AVG(IPL_team_capt) FROM country;
SELECT AVG(Education) FROM farmings;

SELECT * FROM country WHERE dist LIKE 'b%';
SELECT * FROM farmings WHERE vegetables LIKE 'b%';

SELECT INSTR('Rajajinagar', 'i') ;
SELECT INSTR('Sahana', 's');

SELECT SUBSTR('sikhayat',3,5);
SELECT SUBSTR('sikhayat',4,4);

SELECT LTRIM(villages) FROM country;
SELECT LTRIM(community) FROM farmings;

SELECT RTRIM(dist) FROM country;
SELECT RTRIM(vegetables) FROM farmings;

SELECT * FROM country WHERE id BETWEEN 102 AND 108;
SELECT * FROM farmings WHERE migration BETWEEN 'Bagalkot' AND 'badami';

SELECT * FROM country WHERE id In(103, 105, 108);
SELECT * FROM farmings WHERE Area In('siddapur');











