create database sahana;
use sahana;

CREATE TABLE country_detls(id int not null unique, state_name varchar(30) not null unique, capital_name varchar(30) not null unique, crop varchar(30) not null unique, festival varchar(30) not null unique, official_language varchar(30) not null unique, largest_city varchar(30) not null unique, total_area varchar(30) not null unique, female_population bigInt, check (female_population <= 100000), no_of_districts int , check(no_of_districts <= 60));

INSERT INTO country_detls VALUES(1, 'Karnatak', 'Banglore', 'Black pepper', 'Deepavali', 'Kannad', 'Banglore and Hubli', '1,91,791 km^2', 1000 , 30);
INSERT INTO country_detls VALUES(2, 'Andhra Pradesh', 'Hydrabad', 'Dry chilli', 'Brahmotsavam', 'Telugu', 'Visakhapatnam', '1,60,200 km^2', 500 , 13);
INSERT INTO country_detls VALUES(3, 'Arunachal Pradesh', 'Itanagar', 'Large cardamom', 'Losar festival', 'English', 'Itanagar', '83743 km^2', 582 , 25);
INSERT INTO country_detls VALUES(4, 'Assam', 'Dispur', 'Small cardamom', 'Bohag bihu', 'Assameese', 'Guwahati', '78438 km^2', 9874 , 33);
INSERT INTO country_detls VALUES(5, 'Bihar', 'Patna', 'Garlic', 'Teej', 'Hindi', 'Bhagalpur', '94163 km^2', 2547 , 38);
INSERT INTO country_detls VALUES(6, 'Chhattisgarhh', 'Raipur', 'Ginger', 'Bastar Dussehra', 'Chhattisgarhi', 'Bhailai', '1,35,192 km^2', 4521 , 27);
INSERT INTO country_detls VALUES(7, 'Goa', 'Panaji', 'Clove', 'Carnival', 'Konkani', 'Panaji', '3702 km^2', 145 , 2);
INSERT INTO country_detls VALUES(8, 'Gujarat', 'Gandhinagar', 'Cumin', 'Janmashtami', 'Gujarati', 'Ahmedabad', '1,96,244 km^2', 6038 , 34);
INSERT INTO country_detls VALUES(9, 'Hariyana', 'Chandigarh', 'Turmeric', 'Bundi', 'Haryanvi', 'Faridabad', '44212 km^2', 2575 , 22);
INSERT INTO country_detls VALUES(10, 'Himachal Pradesh', 'Shimla', 'Nutmeg', 'Gochi festival', 'Urdu', 'Shimla', '55673 km^2', 6856 , 12);
INSERT INTO country_detls VALUES(11, 'Jarkhand', 'Ranchi', 'Safron', 'Karam festival', 'Tamil', 'Dhanbad', '79716 km^2', 3298 , 24);
INSERT INTO country_detls VALUES(12, 'Keral', 'Tiruvantapuram', 'Soyabeen', 'Onam', 'Malayalam', 'Kochi', '38852 km^2', 3325 , 14);
INSERT INTO country_detls VALUES(13, 'Maharashtra', 'Mumbai', 'Cotton', 'Deepavali', 'Marathi', 'Visakhapatnam', '3,07,713 km^2', 1125 , 36);
INSERT INTO country_detls VALUES(14, 'Manipur', 'Imphal', 'Wheat', 'Ngai festival', 'Meiteilon', 'Imphal', '22327 km^2', 272 , 16);
INSERT INTO country_detls VALUES(15, 'Mizoram', 'Aizwal', 'Gram', 'Chapchar Kut', 'Mizo', 'Aizwal', '21081 km^2', 1025 , 8);
INSERT INTO country_detls VALUES(16, 'Odisha', 'Bhuvaneshwar', 'Bajra', 'Raja parba', 'Oriya', 'Cuttack', '1,55,707 km^2', 4152 , 31);
INSERT INTO country_detls VALUES(17, 'Tripura', 'Agartala', 'Mustard', 'Kharchi puja', 'Kokborok', 'Agartala', '10486 km^2', 3685 , 8);
INSERT INTO country_detls VALUES(18, 'West bengal', 'Kolkata', 'Rice', 'Durga puja', 'Bengali', 'Durgapur', '88752 km^2', 9152 , 23);
INSERT INTO country_detls VALUES(19, 'Sikkim', 'Gangtok', 'Jowar', 'Losar', 'Nepali', 'Gangtok', '1,30,060 km^2', 685 , 37);
INSERT INTO country_detls VALUES(20, 'Chandigarh', 'Punjab', 'Paddy', 'Lohri', 'Punjabi', 'Chandigarh', '114 km^2', 1025 , 1);

SELECT * FROM country_detls;

SELECT DISTINCT(crop) FROM country_detls;
SELECT DISTINCT(capital_name) FROM country_detls;



create table generalstores(id int primary key, name varchar(30) unique, items varchar(30) unique, price int not null, location varchar(30) unique);
select * from generalstores;
insert into generalstores values(1,' shubhamgeneralstores','fair&lovely', 70,'Mejestic');
insert into generalstores values(2,'ganeshgeneralstores','cream', 30,'Rajajinagar');
insert into generalstores values(3,' OMgeneralstores','moisturiser', 80,'Gayatrinnagar');
insert into generalstores values(4,'anugeneralstores','shampoo', 90,'JP nagar');
insert into generalstores values(1,' snehageneralstores','coditioner', 120,'vijaynagar');

create table saloon(id int, name varchar(40), address varchar(30), style_type varchar(20),price int, primary key(id,price));

insert into saloon values(1,'sneha saloon' ,'Ilkal', 'step cut' , 500);
insert into saloon values(2,'Muskhan Parlr' ,'Mudhol', 'stright cut' , 200);
insert into saloon values(3,'anu saloon' ,'guledgudda', 'layer cut' , 400);

select * from saloon;

create table  bank(b_id int primary key, b_name varchar(30) unique, location varchar(30), manager varchar(40));
insert into bank values(101, 'HDFC' ,'BTM','vinoda');
insert into bank values(102, 'SBI' ,'Rajajinagar','muskan');
insert into bank values(103, 'Lakshmichitfunds' ,'Jayanagar','anu');
insert into bank values(104, 'ICICI' ,'JP nagar','sneha');
insert into bank values(105, 'swissbank' ,'Mejestic','sahana');

select * from bank;

create table customer(id int not null, c_name varchar(20) unique, b_id int, acc_type varchar(30), foreign key(b_id) references bank(b_id));
select * from customer;

insert into customer values(1,'shubham',101,'savings');
insert into customer values(2,'kavitha',102,'current');
insert into customer values(3,'chaitra',101,'savings');
insert into customer values(4,'shashi',103,'zeroaccount');

drop table bank;

create table election(id int primary key auto_increment, name varchar(30), party_name varchar(30));

select* from election;
insert into election (name, party_name) values ('shubham','AAP');
insert into election (name, party_name) values ('Lokesh','KRS');
insert into election (name, party_name) values ('sneha','BJP');
insert into election (name, party_name) values ('mahananda','JDS');
insert into election (name, party_name) values ('swati','KRS');
insert into election (name, party_name) values ('anu','AAP');
insert into election (name, party_name) values ('vishala','TDP');
insert into election (name, party_name) values ('pooja','JDS');
insert into election (name, party_name) values ('geeta','AAP');
insert into election (name, party_name) values ('vani','TDP');

/*syntax for adding constraint to existing column
ALTER TABLE table ADD CONSTRAINT containt_name (column_name);*/

alter table election add unique name_uni(name);
desc election;

/*
syntax for adding not null constraint to existing column
ALTER TABLE table_name MODIFY COLUMN column_name datatype CONSTRAINT*/
ALTER TABLE election MODIFY COLUMN party_name varchar(60) not null;

select length(name) from election;
select LTRIM(name) from election;
select RTRIM(name) from election;

select * from election;

--------------------------------------------------------------------------------------------------------------------------
create table  Orders(order_id int, customer_id int, products varchar(30) unique, price int,selling_price int, extra_discount int,primary key(order_id,customer_id));
insert into Orders values(1,6,'papers',100,80,20);
insert into Orders values(2,4,'book',500,400,100);
insert into Orders values(3,3,'pen',100,80,20);
insert into Orders values(4,9,'coomb',80,75,5);
insert into Orders values(5,5,'powder',280,250,30);
insert into Orders values(6,2,'iron box',1000,900,100);
insert into Orders values(7,1,'shampoo',300,250,50);
insert into Orders values(8,7,'watch',2000,1900,100);
insert into Orders values(9,8,'kurta',800,750,50);
insert into Orders values(10,10,'shoes',700,600,100);

 alter table Orders Add no_of_items varchar(50) ;
 alter table Orders Add size varchar(50) ;
 alter table Orders Add color varchar(50) ;
  alter table Orders Add reviews varchar(50) ;
  
   select * from Orders where order_id=1;
   update Orders set no_of_items = 1 WHERE order_id = 1;
   update Orders set no_of_items = 2 WHERE order_id = 2;
   update Orders set no_of_items = 1 WHERE order_id = 3;
   update Orders set no_of_items = 1 WHERE order_id = 4;
   update Orders set no_of_items = 3 WHERE order_id = 5;
   update Orders set no_of_items = 3 WHERE order_id = 6;
   update Orders set no_of_items = 1 WHERE order_id = 7;
   update Orders set no_of_items = 2 WHERE order_id = 8;
   update Orders set no_of_items = 1 WHERE order_id = 9;
   update Orders set no_of_items = 1 WHERE order_id = 10;
   
      update Orders set size = 'M' WHERE order_id = 1;
	  update Orders set size = 'M' WHERE order_id = 2;
      update Orders set size = 'M' WHERE order_id = 3;
      update Orders set size = 'M' WHERE order_id = 4;
      update Orders set size = 'M' WHERE order_id = 5;
      update Orders set size = 'M' WHERE order_id = 6;
      update Orders set size = 'M' WHERE order_id = 7;
      update Orders set size = 'M' WHERE order_id = 8;
      update Orders set size = 'M' WHERE order_id = 9;
	  update Orders set size = 'M' WHERE order_id = 10;
      
            update Orders set color = 'Meroon' WHERE order_id = 1;
			update Orders set color = 'red' WHERE order_id = 2;
            update Orders set color = 'pink' WHERE order_id = 3;
            update Orders set color = 'blue' WHERE order_id = 4;
            update Orders set color = 'black' WHERE order_id = 5;
            update Orders set color = 'yellow' WHERE order_id = 6;
            update Orders set color = 'orange' WHERE order_id = 7;
            update Orders set color = 'white' WHERE order_id = 8;
            update Orders set color = 'voilet' WHERE order_id = 9;
			update Orders set color = 'Meroon' WHERE order_id = 10;


            update Orders set reviews = '2k' WHERE order_id = 1;
			update Orders set reviews = '4k' WHERE order_id = 2;
            update Orders set reviews = '5k' WHERE order_id = 3;
            update Orders set reviews = '3k' WHERE order_id = 4;
            update Orders set reviews = '2k' WHERE order_id = 5;
            update Orders set reviews = '1k' WHERE order_id = 6;
            update Orders set reviews = '2k' WHERE order_id = 7;
            update Orders set reviews = '6k' WHERE order_id = 8;
            update Orders set reviews = '9k' WHERE order_id = 9;
			update Orders set reviews = '1k' WHERE order_id = 10;



      
      select LTRIM(order_id) from Orders;
select LTRIM(customer_id) from Orders;
select LTRIM(products) from Orders;
select LTRIM(price) from Orders;
select LTRIM(selling_price) from Orders;
select LTRIM(extra_discount) from Orders;
select LTRIM(no_of_items) from Orders;
select LTRIM(size) from Orders;
select LTRIM(reviews) from Orders;
select LTRIM(color) from Orders;

select RTRIM(order_id) from Orders;
select RTRIM(customer_id) from Orders;
select RTRIM(products) from Orders;
select RTRIM(price) from Orders;
select RTRIM(selling_price) from Orders;
select RTRIM(extra_discount) from Orders;select LTRIM(no_of_items) from Orders;
select RTRIM(size) from Orders;
select RTRIM(reviews) from Orders;
select RTRIM(color) from Orders;


select * from Orders;
--------------------------------------------------------------------------------------------------------
create table  Customers(order_id int, customer_id int, first_name varchar(30) unique, last_name varchar(30),age int, country varchar(40),primary key(order_id,customer_id));
insert into Customers values(1,6,'sahana', 'c',24,'india');
insert into Customers values(2,4,'anu', 'B',24,'india');
insert into Customers values(3,3,'pooja', 'V',24,'india');
insert into Customers values(4,9,'muskan', 'A',24,'india');
insert into Customers values(5,5,'sneha', 'L',24,'india');
insert into Customers values(6,2,'mahananda', 'B',24,'india');
insert into Customers values(7,1,'vishala', 'K',24,'india');
insert into Customers values(8,7,'swati', 'J',24,'india');
insert into Customers values(9,8,'navya', 'G',24,'india');
insert into Customers values(10,10,'shree', 'H',24,'india');

 alter table Customers Add city varchar(50) ;
  alter table Customers Add location varchar(50) ;

update Customers set city = 'Mudhol' WHERE order_id = 10;
	  update Customers set city = 'Mudhol' WHERE order_id = 9;
	  update Customers set city = 'Banglore' WHERE order_id = 8;
	  update Customers set city = 'Bagalkot' WHERE order_id = 7;
	  update Customers set city = 'ballary' WHERE order_id = 6;
	  update Customers set city = 'Mudhol' WHERE order_id = 5;
	  update Customers set city = 'Davangere' WHERE order_id = 4;
	  update Customers set city = 'rampur' WHERE order_id = 3;
	  update Customers set city = 'Badami' WHERE order_id = 2;
	  update Customers set city = 'Mudhol' WHERE order_id = 1;

select * from Customers;

select length(order_id) from Customers;
select length(customer_id) from Customers;
select length(first_name) from Customers;
select length(age) from Customers;
select length(country) from Customers;
select length(last_name) from Customers;
select length(city) from Customers;
select length(location) from Customers;


select LTRIM(order_id) from Customers;
select LTRIM(customer_id) from Customers;
select LTRIM(first_name) from Customers;
select LTRIM(age) from Customers;
select LTRIM(country) from Customers;
select LTRIM(last_name) from Customers;
select LTRIM(city) from Customers;
select LTRIM(location) from Customers;


select RTRIM(order_id) from Customers;
select RTRIM(customer_id) from Customers;
select RTRIM(first_name) from Customers;
select RTRIM(age) from Customers;
select RTRIM(country) from Customers;
select RTRIM(last_name) from Customers;
select RTRIM(city) from Customers;
select RTRIM(location) from Customers;

--------------------------------------------------------------------------------------------------------------------------

create table  Buyer(order_id int, customer_id int, first_name varchar(30) unique, last_name varchar(30),age int, country varchar(40),foreign key(order_id,customer_id) references Orders(order_id,customer_id));

insert into Buyer values(1,6,'sahana', 'c',24,'india');
insert into Buyer values(2,4,'anu', 'B',24,'india');
insert into Buyer values(3,3,'pooja', 'V',24,'india');
insert into Buyer values(4,9,'muskan', 'A',24,'india');
insert into Buyer values(5,5,'sneha', 'L',24,'india');
insert into Buyer values(6,2,'mahananda', 'B',24,'india');
insert into Buyer values(7,1,'vishala', 'K',24,'india');
insert into Buyer values(8,7,'swati', 'J',24,'india');
insert into Buyer values(9,8,'navya', 'G',24,'india');
insert into Buyer values(10,10,'shree', 'H',24,'india');

select * from Buyer;

--------------------------------------------------------------------------------------


CREATE TABLE hotel_name(hotel_id int  , hotelNo bigint, hotelName varchar(10), hotelAddress varchar(15), hotelCity varchar(20), roomNo int, roomType varchar(18), roomPrice double,  checkoutTime time, created_by varchar(20),primary key(hotel_id));

SELECT * FROM hotel_name;

INSERT INTO hotel_name VALUES(1, 963258452, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(2, 975225321, 'Anu hotel', 'Rajjainagar', 'Banlore', 166, 'Single room', 3000.00, current_time(), now());
INSERT INTO hotel_name VALUES(3, 895225358, 'Suka Sagar', 'kalyanagar', 'Bagalkot', 256, 'Double room', 6000.00, current_time(), now());
INSERT INTO hotel_name VALUES(4, 635221258, 'Shabari', 'Shivajicircle', 'Mudhol', 123, 'Ac room', 8000.00, current_time(), now());
INSERT INTO hotel_name VALUES(5, 785225625, 'A1 hotel', 'Bagawanpeth', 'Guledgudd', 235, 'NonAc room', 9000.00, current_time(), now());
INSERT INTO hotel_name VALUES(6, 963258452, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(7, 963258451, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(8, 963258452, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(9, 963258453, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(10, 963258454, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());
INSERT INTO hotel_name VALUES(11, 963258455, 'Kamathotel', 'Rajkumarnagara', 'BangloreRajajinagar', 166, 'Singleanddoubles', 5000.00, current_time(), now());

SELECT * FROM hotel_name;

select LTRIM(hotel_id) from hotel_name;
select LTRIM(hotelNo) from hotel_name;
select LTRIM(hotelName) from hotel_name;
select LTRIM(hotelAddress) from hotel_name;
select LTRIM(hotelCity) from hotel_name;
select LTRIM(roomNo) from hotel_name;
select LTRIM(roomType) from hotel_name;
select LTRIM(roomPrice) from hotel_name;
select LTRIM(checkoutTime) from hotel_name;
select LTRIM(created_by) from hotel_name;

select RTRIM(hotel_id) from hotel_name;
select RTRIM(hotelNo) from hotel_name;
select RTRIM(hotelName) from hotel_name;
select RTRIM(hotelAddress) from hotel_name;
select RTRIM(hotelCity) from hotel_name;
select RTRIM(roomNo) from hotel_name;
select RTRIM(roomType) from hotel_name;
select RTRIM(roomPrice) from hotel_name;
select RTRIM(checkoutTime) from hotel_name;
select RTRIM(created_by) from hotel_name;


---------------------------


SELECT * FROM chat_detail;

CREATE TABLE chat_detail(hotel_id int , Chats varchar(30), ChatPrice bigint, Sweets varchar(50), SweetPrice bigint, Starters varchar(50), StarterPrice bigint, GstNo varchar(40), PhoneNo bigint, Address varchar(30), foreign key(hotel_id) references hotel_name(hotel_id));

INSERT INTO chat_detail VALUES(1, 'Pani Puri', 20, 'Jalebi', 10, 'Aloo Bonda', 50, 'AETF213555455', 963258412, 'Rajajinagar');
INSERT INTO chat_detail VALUES(2, 'Masala Puri', 25, 'Sweet samosa', 30, 'Chinees samosa', 60, 'SEWHE4454545', 854126842, 'Gayatrinagar');
INSERT INTO chat_detail VALUES(3, 'Sev Puri', 25, 'Rabdi jalebi', 40, 'Khasta kachori', 30, 'WEW4554155', 6321475452, 'Navrang');
INSERT INTO chat_detail VALUES(4, 'Aloo Puri', 30, 'Gajar halwa', 35, 'Vegetable cutlet', 40, 'SDSJD5454555', 874255412, 'Kalyanagar');
INSERT INTO chat_detail VALUES(5, 'Dahi Puri', 25, 'Rasmalai', 25, 'Vada pav', 45, 'SDS4555455', 7542982554, 'Lalbhag');
INSERT INTO chat_detail VALUES(6, 'Bhel Puri', 25, 'Rasgulla', 25, 'Pav bhaji', 50, 'QWFFF55455', 636268415, 'Shivajinagar');
INSERT INTO chat_detail VALUES(7, 'Jhal muri', 30, 'Jamoon', 15, 'French fries', 60, 'SSDFDG45451', 896325417, 'Katriguppe');
INSERT INTO chat_detail VALUES(8, 'Tikki chaat', 35, 'Kulfie', 30, 'Paneer cutlet', 50, 'ADFDFGD55455', 652147896, 'Kengeri');
INSERT INTO chat_detail VALUES(9, 'Kachori', 30, 'Boondi', 25, 'Russian cutlet', 40, 'FGFGD554451', 6556895656, 'Whitefield');
INSERT INTO chat_detail VALUES(10, 'Samosa', 20, 'Imarti', 20, 'Sandwich', 30, 'SDFER54452', 896325412, 'Srirampura');
INSERT INTO chat_detail VALUES(11, 'Dahi vada', 30, 'Kheer', 20, 'Gobi', 40, 'EERETRT4545', 741258963, 'Ghandhi nagar');


select LTRIM(hotel_id) fROM chat_detail;
select LTRIM(Chats) fROM chat_detail;
select LTRIM(ChatPrice) fROM chat_detail;
select LTRIM(Sweets) fROM chat_detail;
select LTRIM(SweetPrice) fROM chat_detail;
select LTRIM(Starters) fROM chat_detail;
select LTRIM(StarterPrice) fROM chat_detail;
select LTRIM(GstNo) fROM chat_detail;
select LTRIM(GstNo) fROM chat_detail;
select LTRIM(Address) fROM chat_detail;

select RTRIM(hotel_id) fROM chat_detail;
select RTRIM(Chats) fROM chat_detail;
select RTRIM(ChatPrice) fROM chat_detail;
select RTRIM(Sweets) fROM chat_detail;
select RTRIM(SweetPrice) fROM chat_detail;
select RTRIM(Starters) fROM chat_detail;
select RTRIM(StarterPrice) fROM chat_detail;
select RTRIM(GstNo) fROM chat_detail;
select RTRIM(GstNo) fROM chat_detail;
select RTRIM(Address) fROM chat_detail;


SELECT * FROM chat_detail;

SELECT * FROM chat_detail group by GstNo;

------------------------------------------------------------------------------------------------
create table fooddetails(id int not null,resturant varchar(40),food_item varchar(40),Quantity int,price int, check(price>= 45 AND price<=200)); 

INSERT INTO fooddetails values(1,'shubhamtindi','biriyani',3,150),(2,'anu','veg fried rice',4,160),(3,'muskan','eggrice',3,180),(4,'sagar','palav',4,200),(5,'dhanu','vegBiriyani',4,100),(6,'kan','rice',3,50);

lock;

LOCK TABLE fooddetails read;

UPDATE fooddetails SET price =150 where id = 1;

UNLOCK tables;
UPDATE fooddetails SET price =150 where id = 1;

SELECT * FROM fooddetails limit 2;

select * from fooddetails order by id desc limit 2;

select * from fooddetails order by food_item desc limit 2;

GREATEEST:

35,56,66,44,55,32,23,65

SELECT greatest(35,56,66,44,55,32,23,65);

/*DATEDIFF:DATE DIFFERENCE*/

SELECT datediff('2022-11-01','2022-10-10');

/*dayname:*/
SELECT dayname('2022-10-9');

SELECT dayofyear('2022-10-9');



































