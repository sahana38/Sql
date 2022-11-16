create database vehicles;

use vehicles;

create table car(Id int primary key,carId1 int not null unique,   Symbol2 varchar(50)not null unique,   carName3 varchar(50) not null unique, 
fueltype4 varchar(50)not null unique, doornumber5 varchar(50) not null unique,
 carbody6 varchar(50) not null unique, wheelbody7 int not null unique, carlength8 varchar(50) not null unique, 
 carwidth9 varchar(50) not null unique, carheight10 varchar(50) not null unique,
 carweight11 int not null unique , no_Of_wheels12 int not null unique,  no_of_seats13 int not null unique, 
 showroom_name14 varchar(50) not null unique,  showroom_location15 varchar(50) not null unique,
 showroom_country16 varchar(50) not null unique, manufacture_year17 varchar(50) not null unique, 
 day_of_buying18 varchar(50) not null unique, year19 int not null unique, price20 bigint not null unique,
 manufactured_cntry21 varchar(50) not null unique,  selled_year_cntry22 int not null unique, 
 founder_name23 varchar(50) not null unique, founder_age24 int not null unique, founder_dob25 varchar(50) not null ,
 founder_city26 varchar(50) not null unique, founder_cntry27 varchar(50) not null unique,founder_email28 varchar(50) not null unique,
 founder_adrs29 varchar(50) not null unique,buyer_Id30 int not null unique,
 buyer_name31 varchar(50), buyer_address32 varchar(50), buyer_mobile_no33 varchar(50) ,
 buyer_city34 varchar(50),buyer_country35 varchar(50), 
 buyer_current_location36 varchar(50) not null unique, buyer_age37 int , check(buyer_age37 > 20), 
 buyer_dob38 varchar(50) not null , buyer_email39 varchar(50) not null unique,buyer_mobile_no varchar(100)not null unique);
 drop table car;
 

insert into car values(1, 34 , 1, "alfa-romero", "gas",  4 , "convertible", 8, 168.9, 64.1, 42.8, 2549, 4, 2, "Manjunath", "Mudhol", "India",
2022, "monday", 2022, 235467, "India" , 2022, "Annakarmel", 22, '99', "Mudhol", "India", "anu@gmail.com", "ak", 1, "sahana", "h", 987654327, 
"Mudhol", "India",  "jk colony", 22, 67, "sahana@gmail.com" , 324567899);
select * from car;

insert into car values(2, 33 , 2, "audi 100", "petrol",  2 , "hatchback", 2, 168.6, 64.4, 41.8, 2349, 2, 3, "Sneha", "Bagalkot", "Austrelia",
1999, "mon", 1999, 235327, "Austrelia" , 1999, "Muskan", 23, 98, "Bagalkot", "Austrelia", "m@gmail.com", "gk", 2, "swati", "r", 98765432, 
"Bagalkot", "Austrelia",  "bk colony", 23, 24 , "s@gmail.com" , 33125699);
insert into car values(3, 38 , 3, "bmw x1", "desll",  5 , "sedan", 7, 123.9, 65.8, 51.8, 1234, 14, 229, "varun", "yadwad", "bulgaria",1921, "tue", 1981, 2323361, "bulgaria" , 2041, "varun", 25, 22, "yadwad", "bulgaria", "a@gmail.com", "k", 3, "sneha", "rt", 987644521, "yadwad", "bulgaria",  "qw colony", 24, 24 , "a@gmail.com" , 987644521);
insert into car values(4, 39 , 4, "bmw x2", "deisel",  6 , "coupe", 98, 143.9, 66.8, 52.8, 2345, 5, 5, "prasad", "bilagi", "china",1922, "tues", 1982, 2323362, "china" , 2042, "prasad", 26, 76, "bilagi", "china", "b@gmail.com", "l", 4, "suman", "rl", 9876445217, "bilagi", "china",  "rt colony", 24, 8967 , "b@gmail.com" , 9876445217);
insert into car values(5, 40 , 5, "bmw x3", "desil",  7 , "SUV", 88, 193.9, 67.8, 67.8, 4653, 6, 6, "raju", "Badami", "bangladesh",1923, "wed", 1972, 2323363, "bangladesh" , 2043, "raju", 27, 22-3-98, "Badami", "bangladesh", "c@gmail.com", "mn", 5, "vishala", "rm", 9876445327, "Badami", "bangladesh",  "uy colony", 24, 4874 , "c@gmail.com" , 3248487899);
insert into car values(6, 41 , 6, "audi 100ls", "petro",  8 , "crossover", 9, 173.9, 53.8, 33.8, 1233, 7, 7, "pawan", "indi", "austria",1924, "wedn", 1984, 2323364, "austria" , 2044, "pawan", 28, 22-4-99, "pawan", "austria", "d@gmail.com", "dd", 6, "akash", "rn", 9876344527, "Bijapr", "austria",  "ub colony", 24, 7448 , "d@gmail.com" , 324344699);
insert into car values(7, 42 , 7, "audi 1000", "p",  9 , "minivan", 10, 187.9, 69.8, 54.8, 1232, 8, 8, "avinash", "solpur", "brazil",1925, "wednsdy", 1985, 2323365, "brazil" , 2045, "avinash", 29, 22-5-98, "solpur", "brazil", "e@gmail.com", "de", 7, "swati", "rb", 9876444527, "solpur", "brazil",  "kg colony", 24, 1226 , "e@gmail.com" , 32437899);
insert into car values(8, 43 , 8, "bmw x4", "gass",  10 , "van", 11, 1853.9, 70.8, 55.8, 2305, 9, 9, "Akshay", "Belgaum", "cambodia",1926, "wensday", 1986, 2323366, "cambodia" , 2046, "Akshay", 30, 22-6-98, "Belgaum", "cambodia", "f@gmail.com", "ed", 8, "geeta", "vr", 9876544527, "Belgaum", "cambodia",  "iy colony", 24, 4569 , "f@gmail.com" , 327857899);
insert into car values(9, 44 , 9, "bmw x5", "electr",  11 , "sports car", 12, 234.9, 71.8, 56.8, 2346, 10, 10, "shubham", "kolhapur", "abania",1927, "weday", 1987, 2323368, "abania" , 2047, "shubham", 31, 22-7-98, "kolhapur", "abania", "g@gmail.com", "kf", 9, "spandana", "rc", 9876644527, "kolhapur", "abania",  "er colony", 24, 5862 , "g@gmail.com" , 32439257899);
insert into car values(10, 45 , 10, "audi 439ls", "charge",  12 , "compact", 13, 433.9, 72.8, 57.8, 2365, 11, 11, "akash", "savadatti", "canada",1928, "thursday", 1988, 2323369, "canada" , 2048, "akash", 32, 22-8-98, "savadatti", "canada", "h@gmail.com", "ka", 10, "shalini", "rx", 9876474527, "savadatti", "canada",  "yr colony", 24, 0809 , "h@gmhail.com" , 328997899);
insert into car values(11, 46 , 11, "ford probe", "power",  13 , "vanu", 14, 167.9, 73.8, 58.8, 5678, 12, 12, "sagar", "ramdurg", "denmark",1929, "thurs", 1989, 2323310, "denmark" , 2049, "sagar", 33, 22-9-98, "ramdurg", "denmark", "i@gmail.com", "kd", 11, "vishalaec", "rz", 9879644527, "ramdurg", "denmark",  "kj colony", 24, 11-6-93 , "i@gmail.com" , 324367899);
insert into car values(12, 47 , 12, "mazda laputa", "dsl",  14 , "hardtop", 15, 161.9, 74.8, 59.8, 9876, 13, 13, "rohit", "hubli", "argentina",1930, "thur", 1990, 2323311, "argentina" , 2050, "rohit", 34, 22-11-98, "hubli", "argentina", "j@gmail.com", "kj", 12, "swatiet", "rh", 9876448527, "hubli", "argentina",  "nm colony", 24, 12-6-93 , "j@gmail.com" , 345657899);
insert into car values(13, 48 , 13, "chevy", "diesl",  15 , "brougham", 16, 162.9, 75.8, 60.8, 3453, 60, 140, "mallu", "dharwad", "belarus",1931, "thu", 1971, 2323312, "belarus" , 2070, "mallu", 35, 22-12-98, "dharwad", "belarus", "k@gmail.com", "ks", 13, "snehatr", "rf", 9876484527, "dharwad", "belarus",  "ln colony", 24, 19-6-93 , "k@gmail.com" , 324667899);
insert into car values(14, 49 , 14, "dodge viper", "ptrl",  16 , "creta", 17, 134.9, 76.8, 71.8, 2341, 15, 15, "manikant", "hubbali", "bahrain",1932, "fri", 1902, 2323313, "bahrain" , 2071, "manikant", 36, 23-10-98, "hubbali", "bahrain", "l@gmail.com", "akk", 14, "sani", "rd", 9878644527, "hubbali", "bahrain",  "bg colony", 24, 16-6-93 , "l@gmail.com" , 32438899);
insert into car values(15, 50 , 15, "porse", "ptl",  17 , "wagon", 18, 263.9, 54.8, 77.8, 8674, 16, 16, "arun", "shivmogha", "afghanistan",1933, "frid", 1973, 2323314, "afghanistan" , 2072, "shivmogha", 37, 24-10-98, "shivmogha", "afghanistan", "z@gmail.com", "vn", 15, "sweta", "rc", 9876844527, "shivmogha", "afghanistan",  "fg colony", 24, 7-6-93 , "m@gmail.com" , 324789999);
insert into car values(16, 51 , 16, "bmw 100", "gasss",  18 , "station wagon", 19, 188.9, 78.8, 72.8, 4854, 17, 17, "kartik", "daavngere", "algeria",1934, "fridy", 1974, 23233615, "algeria" , 2073, "kartik", 38, 25-10-98, "daavngere", "algeria", "n@gmail.com", "al", 16, "neeraj", "rs", 9876449527, "daavngere", "algeria",  "jl colony", 24, 2-6-93 , "n@gmail.com" , 3243699);
insert into car values(17, 52 , 17, "Amc gremlin", "electricity",  19 , "cmpct", 20, 177.9, 79.8, 73.8, 9474, 18, 18, "darshan", "hospete", "greece",1935, "frdy", 1975, 2323316, "greece" , 2074, "darshan", 39, 26-10-98, "hospete", "greece", "o@gmail.com", "bg", 17, "sharu", "rt", 9876445827, "hospete", "greece",  "as colony", 24, 3-6-93 , "o@gmail.com" , 32778789899);
insert into car values(18, 53 , 18, "volkswagen", "charging",  20 , "sedann", 21, 198.9, 80.8, 74.8, 4689, 19, 19, "amough", "Ballary", "brunei",1936, "sat", 1976, 2323317, "brunei" , 2075, "amough", 40, 27-10-98, "Ballary", "brunei", "p@gmail.com", "cl", 18, "pooja", "ar", 9876444527, "Ballary", "brunei",  "at colony", 24, 4-6-93 , "p@gmail.com" , 3243578799);
insert into car values(19, 54 , 19, "jetta", "char",  21 , "gham", 22, 199.9, 81.8, 75.8, 8474, 20, 20, "aditya", "kaladagi", "czech",1987, "satur", 1977, 2323318, "czech" , 2076, "aditya", 41, 28-10-98, "kaladagi", "czech", "q@gmail.com", "hk", 19, "trupti", "br", 9876443527, "czech", "czech",  "hs colony", 24, 8-6-93 , "q@gmail.com" , 314357899);
insert into car values(20, 55 , 20, "toyato", "ele",  22 , "cope", 23, 200.9, 82.8, 76.8, 7305, 21, 21, "supreet", "guledgudda", "armenia",1900,"saturday", 1938, 2323319, "armenia" , 2077, "supreet", 42, 29-10-98, "guledgudda", "armenia", "r@gmail.com", "gh", 20, "nihal", "nr", 9876445927, "guledgudda", "armenia",  "dd colony", 24, 19-6-93 , "r@gmail.com" , 324358899);
insert into car values(21, 56 , 21, "ferrari", "gs",  23 , "crosover", 24, 103.9, 83.8, 7.8, 0873, 22, 22, "basu", "koppal", "andorr",1007, "satdy", 1939, 2323320, "andorr" , 2078, "basu", 43, 30-10-98, "koppal", "andorr", "s@gmail.com", "vb", 21, "sohel", "ir", 9876445527, "koppal", "andorr",  "uy colony", 24, 14-6-93 , "s@gmail.com" , 987648527);
insert into car values(22, 57 , 22, "bentley", "ptrll",  24 , "tophard", 25, 203.9, 84.8, 9.8, 9076, 23, 23, "vijay", "Bidar", "france",1902, "sunday", 1940, 2323321, "france" , 2079, "vijay", 44, 11-10-98, "Bidar", "france", "t@gmail.com", "hg", 22, "supreet", "jr", 9876344527, "Bidar", "france",  "lk colony", 24, 10-6-93 , "t@gmail.com" , 987634827);

select car.id,person_info.id from car left join person_info on car.id = person_info.id;
select car.id,person_info.id from car right join person_info on car.id = person_info.id;
select car.id,person_info.id,car.buyer_name31,person_info.name,car.founder_adrs29,person_info.current_address from car right join person_info on car.id = person_info.id;

SELECT * FROM car order by id desc limit 4;
SELECT * FROM car order by id desc limit 18;
SELECT * FROM car order by id asc limit 18;
SELECT * FROM car order by id asc limit 18;

SELECT id,founder_age24, count(founder_age24) from car group by founder_age24;
SELECT id,founder_age24, sum(founder_age24) from car group by founder_age24;
SELECT id,founder_age24, avg(founder_age24) from car group by founder_age24;
SELECT id,founder_age24, max(founder_age24) from car group by founder_age24;
SELECT id,founder_age24, min(founder_age24) from car group by founder_age24;

SELECT id,price20, count(price20) as count from car group by price20 having price20;
SELECT id,price20, sum(price20) as count from car group by price20 having price20;
SELECT id,buyer_name31, avg(buyer_name31) as count from car group by buyer_name31 having buyer_name31;
SELECT id,price20, min(price20) as count from car group by price20 having price20;
SELECT id,buyer_name31, max(buyer_name31) as count from car group by buyer_name31 having buyer_name31;
SELECT id,buyer_name31, count(buyer_name31) as count from car group by buyer_name31 having buyer_name31;


SELECT * FROM car order by id desc;
SELECT * FROM car order by id asc;

SELECT * FROM car WHERE id IN(1,2,7,8);
SELECT * FROM car WHERE id IN(1,8,17,9);

SELECT * FROM car WHERE id NOT IN(1,2,7,8);
SELECT * FROM car WHERE id NOT IN(1,8,17,9);

SELECT * FROM car WHERE id between 1 AND 8;
SELECT * FROM car WHERE id between 11 AND 20;
SELECT * FROM car WHERE id between 6 AND 8;

SELECT * FROM car WHERE id =11 or id= 22;


create table person_info(Sno int not null unique, name varchar(50),age int, cername varchar(50), gender varchar(20),
 father_name varchar(50) not null unique, father_age int not null unique, mother_name varchar(50) not null unique, mother_age int not null, Id int, 
 address varchar(50), current_address varchar(50), email varchar(50), dist varchar(50), tq varchar(50),
 country varchar(50) not null, city varchar(50), pin int, mobile_no varchar(50), type_of_category varchar(50), foreign key(Id) references car(Id));
 select * from person_info;
 
1,  "sahana", 22,"r", "F",  "M", 54, "B", 53, 1, "P","p","sahana@gmail.com","Bagalkot","Badami","India","Mudhol",254546,324567899
2,  "swati", 23,"rt", "F",  "A", 53, "N", 52, 2, "O","O", "s@gmail.com", "Bagalkot", "Badami","Austrelia","Bagalkot",677543,33125699 
3,  "sneha", 24,"rl", "F",  "S", 52,  "V", 51, 3, "I","I","a@gmail.com", "Belgaum", "Ramdurg","bulgaria","yadwad",76789,987644521
4,  "suman", 24, "rm", "F", "D", 51, "C", 50, 4,"U","U", "b@gmail.com", "Belgaum", "Savdatti","china","bilagi",345466666, 9876445217
5,  "vishala", 24,"rn", "F", "F", 50, "X", 49, 5,"Y","Y", "c@gmail.com", "chichkandi", "chunchnur","bangladesh","Badami",98546, 3248487899
6,  "akash", 24 "rb", "M", "G", 55, "Z", 54, 6,"T","T", "d@gmail.com","muchakandi", "katagerri","austria","Bijapr",32455,324344699
7, "swati", 24, "vr","F", "H", 56, "L", 55, 7,"R", "R", "e@gmail.com","ingalagi", "kulali", "brazil","solpur",35666,32437899
8, "geeta", 24, "rc", "F", "J", 57, "K", 56, 8,"E", "E", "f@gmail.com","shirol", "hulyal", "cambodia","Belgaum",23456, 327857899
9, "spandana", 24, "rx", "F", "K", 58, "J",57, 9, "W", "E","g@gmail.com","siddapur", "asangi", "abania","kolhapur",54567,32439257899,
10, "shalini", 24, "rz", "F",  "L", 59, "H",60, 10, "q","q", "h@gmhail.com","Ingalagi", "halagatti", "canada","savadatti",78568,328997899
11, "vishalaec",24, "rz", "F", "P", 60, "G", 61,11, "l", "l", "i@gmail.com","Ilakal","gorbal", "denmark","ramdurg",87566,324367899
12, "swatiet",24, "rh", "F", "O", 61, "F", 62, 12, "k", "k", "j@gmail.com","Thondihal","gorbal", "argentina","hubli",54456, 345657899
13, "snehatr", 24, "rf","F", "I", 62, "D", 63, 13, "h", "h", "k@gmail.com","chippalkatti","jirgal","belarus","dharwad",77232, 324667899
14, "sani", 24, "rd","M", "U", 63, "S", 64, 14, "g","g", "l@gmail.com","hulasgeri", "lakkaskoppa","bahrain","hubbali",64747,32438899
15, "sweta", 24, "rc", "F", "Y", 64, "A", 65, 15,"h","h", "m@gmail.com","konkankoppa", "Amingad","afghanistan","shivmogha",86964,324789999
16, "neeraj", 24, "rs", "M", "T", 65, "P", 66, 16,"F","F", "n@gmail.com","kamtagi", "guledgudd","algeria","daavngere", 74434,3243699
17, "sharu", 24, "rt" , "F", "R", 66,"I", 67, 17,"D","D", "o@gmail.com","chittaragi", "hungund","greece","hospete", 228957,32778789899
18,  "pooja" , 24, "ar", "F", "E", 67, "U", 68, 18,"S","S", "p@gmail.com", "chimmad", "malingpur","brunei","Ballary",434356, 3243578799
19, "trupti", 24, "br", "F", "W", 68,"Y", 69, 19,"A","A", "q@gmail.com","terdal", "sorganv","czech","czech",875657,314357899
20, "nihal", 24, "nr", "M", "Q", 69,"T", 70, 20,"m","m", "r@gmail.com","golbavi", "gokak","armenia","guledgudda",767899,324358899
22,  "supreet", 24, "jr", "M", "N", 70,"E", 71, 22, "N","N","t@gmail.com","samirwadi","jamakandi","france","Bidar",65468,987634827
 
 select car.id,person_info.mobile_no from car left join person_info on car.id = person_info.id;
select car.id,person_info.type_of_category from car right join person_info on car.id = person_info.id;
select car.id,person_info.email,car.buyer_name31,person_info.name,car.founder_adrs29,person_info.mother_name from car right join person_info on car.id = person_info.id;

SELECT * FROM car order by id desc limit 4;
SELECT id,mobile_no, count(mobile_no) from person_info group by mobile_no;
SELECT id,type_of_category, sum(type_of_category) from person_info group by type_of_category;
SELECT id,mother_name, avg(mother_name) from person_info group by mother_name;
SELECT id,father_age, max(father_age) from person_info group by father_age;
SELECT id,mother_age, min(mother_age) from person_info group by mother_age;

SELECT id,type_of_category, count(type_of_category) as count from person_info group by type_of_category having type_of_category;
SELECT id,cername, sum(cername) as count from person_info group by cername having cername;
SELECT id,mother_age, avg(mother_age) as count from person_info group by mother_age having mother_age;
SELECT id,email, min(email) as count from person_info group by email having email;
SELECT id,father_age, max(father_age) as count from person_info group by father_age having father_age;
SELECT id,address, count(address) as count from person_info group by address having address;

SELECT * FROM person_info order by id desc;
SELECT * FROM person_info order by id asc;

SELECT * FROM person_info WHERE id IN(1,2,7,8);
SELECT * FROM person_info WHERE id IN(1,8,17,9);

SELECT * FROM person_info WHERE id NOT IN(1,2,7,8);
SELECT * FROM person_info WHERE id NOT IN(1,8,17,9);

SELECT * FROM person_info WHERE id between 1 AND 8;
SELECT * FROM person_info WHERE id between 11 AND 20;
SELECT * FROM person_info WHERE id between 6 AND 8;

SELECT * FROM person_info WHERE id =8 or id=19;

select  buyer_country35 from car where id = (select id from person_info where id =20);
select  type_of_category from person_info where id = (select id from car where id =20);
select  showroom_location15 from car where id = (select id from person_info where id =20);
select  email from person_info where id = (select id from car where id =20);
select  buyer_mobile_no from car where id = (select id from person_info where id =20);


 
