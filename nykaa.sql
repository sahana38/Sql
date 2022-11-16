create table nyakaas(id int, firstname varchar(50), lastName varchar(50),Sno int, Phone varchar(50), Address1 varchar(50), Address2 varchar(50), 
city varchar(50), state varchar(50), country varchar(50), creditLimit int);

insert into nyakaas value(301, "sneha", "L", 1,5687870909, "rajajinagar", "gatrinagar" ,"Banglore", "karnataka", "India", 2);
insert into nyakaas value(302, "sahana", "C",6, 4352567899, "vidyagiri", "vidyagiri 2nd cross" ,"Bagalkot", "kerala", "Austrelia", 3);
insert into nyakaas value(303, "soumya", "B", 7,6732909200, "navnagar", "9th cross" ,"Bagalkot", "USA", "AP", 4);
insert into nyakaas value(304, "shubhangi", "D",9, 8327845438, "sainagar", "yadwad road" ,"Badami", "MP", "singapur", 8);
insert into nyakaas value(305, "anu", "P",5, 372647893, "P colony", "near new bus stop" ,"Mudhol", "rajastan", "Africa", 7);
insert into nyakaas value(306, "muskan", "K",3, 3763457833, "rajajinagar", "sriranmpur" ,"chichkandi", "UP", "England", 5);
insert into nyakaas value(307, "mahananda", "J",5, 3987454536, "mahalaxmi layout", "rajajinagar" ,"Tamilnadu", "karnataka", "India", 4);
insert into nyakaas value(308, "vaish", "V",8, 9873654352, "sagar main road", "sagar nagar" ,"Ballary", "kashmir", "Srilanka", 8);
insert into nyakaas value(309, "vishala", "L",9, 9623654572, "bakshi plot", "near sabhabhavan" ,"Bagalkot", "MP", "Africa", 9);
insert into nyakaas value(310, "swati", "D",10, 854325656, "badami road", "near kp nagar" ,"Bilagi", "Andra", "India", 3);
insert into nyakaas value(311, "pooja", "U",11, 9763545432, "majestic", "gatrinagar" ,"Bijapur", "Assam", "Austrelia", 4);
insert into nyakaa value(312, "disha", "G",3,967325425, "rajajinagar", "gatrinagar" ,"Hubli", "karnataka", "England", 1);

select * from nyakaas;
select * from nyakaa_office;
select * from Emp;

create table nyakaa_office(sno int,id int, code int, Address1 varchar(50), Address2 varchar(50),city varchar(50), 
                           state varchar(50), country varchar(50), Postal_code varchar(50), Territory varchar(60));
insert into nyakaa_office values(1,312, "581373","rajajinagar", "gatrinagar" ,"Hubli", "karnataka", "England", 11, "Puducherry");
insert into nyakaa_office values(2,311, "581373", "majestic", "gatrinagar" ,"Bijapur", "Assam", "Austrelia", 4,"Puducherry");
insert into nyakaa_office values(3,305, "581373","P colony", "near new bus stop" ,"Mudhol", "rajastan", "Africa", 7, "delhi");
insert into nyakaa_office values(4,302, "581373", "vidyagiri", "vidyagiri 2nd cross" ,"Bagalkot", "kerala", "Austrelia", 3, "J&K");
insert into nyakaa_office values(5,307, "581373", "mahalaxmi layout", "rajajinagar" ,"Tamilnadu", "karnataka", "India", 4, "Puducherry");
insert into nyakaa_office values(6,306, "581373","rajajinagar", "sriranmpur" ,"chichkandi", "UP", "England", 5, "Puducherry");
insert into nyakaa_office values(7,309, "581373","bakshi plot", "near sabhabhavan" ,"Bagalkot", "MP", "Africa", 9, "J&K");
insert into nyakaa_office values(8,301, "581373","rajajinagar", "gatrinagar" ,"Banglore", "karnataka", "India", 2, "Lakshadweep");
insert into nyakaa_office values(9,303, "581373","navnagar", "9th cross" ,"Bagalkot", "USA", "AP", 4, "delhi");
insert into nyakaa_office values(10,308, "581373", "sagar main road", "sagar nagar" ,"Ballary", "kashmir", "Srilanka", 8,"J&K");
insert into nyakaa_office values(11,310, "581373","badami road", "near kp nagar" ,"Bilagi", "Andra", "India", 3, "delhi");
insert into nyakaa_office values(12,304, "581373", "sainagar", "yadwad road" ,"Badami", "MP", "singapur", 8, "delhi");
select * from nyakaa_office;

create table Emp(Sno int, id int, OfficeCode int, reportsTo varchar(50), firstname varchar(50), lastname varchar(50), Extension varchar(50),
                 Email varchar(50),city varchar(50), name varchar(50) );

insert into Emp values(1 , 301, 581373, "head", "sneha", "L", "L9B","sneha@gmail.com", "Bangalore", "sahana");
insert into Emp values(2, 302, 581373, "manager", "sahana", "C", "G7J","sahana@gmail.com", "Bagalkot", "akash");
insert into Emp values(3 , 303, 581373, "ceo", "soumya", "B" "Y6U","soumya@gmail.com", "Bagalkot", "supreet");
insert into Emp values(4 , 304, 581373, "manager", "shubhangi", "D", "D3G","shubhangi@gmail.com", "Badami", "swati");
insert into Emp values(5 , 305, 581373, "ceo", "anu", "P", "LK6","anu@gmail.com", "Mudhol", "sweta");
insert into Emp values(6 , 306, 581373, "head", "muskan", "K", "KL7","muskan@gmail.com", "chichakandi", "sagar");
insert into Emp values(7 , 307, 581373, "ceo", "mahananda", "J", "NB7","mahananda@gmail.com", "Bangalore", "rohit");
insert into Emp values(8 , 308, 581373, "manager", "vaish", "V", "4HG","vaish@gmail.com", "Bangalore", "manu");
insert into Emp values(9 , 309, 581373, "ceo","vishala", "L", "HG6","vishala@gmail.com", "ballary", "adi");
insert into Emp values(10 , 310, 581373, "manager", "swati", "D", "PG5","swati@gmail.com", "Bagalkot", "amogh");
insert into Emp values(11 , 311, 581373, "head",  "pooja", "U", "FH9","pooja@gmail.com", "Bilagi", "vijay");
insert into Emp values(12 , 312, 581373, "ceo", "disha", "G", "LK5","disha@gmail.com", "Bijapur", "ajay");

select * from Emp;

select cust_name from cust_details where id= (select id from loan_details  where cust_id =203);
 select Address1 from nyakaas where id =(select id from nyakaa_office where state = "karnataka" and country="england" );
 select creditLimit from nyakaas where id =(select id from nyakaa_office where country="USA" );
 select firstname from nyakaas where id =(select id from nyakaa_office where state = "karnataka" and country="england" );
 select OfficeCode from Emp where id =(select id from nyakaa_office where id=301);
 select firstname from Emp where id =(select id from nyakaa_office where id=312);
 select Territory from nyakaa_office where id =(select id from nyakaas where id=312);
 select Territory from nyakaa_office where id =(select id from Emp where id=307);
 select Extension from Emp where id =(select id from nyakaas where id=305);
 select state from nyakaas where id =(select id from Emp where id=305);
 
select nyakaa.id,nyakaa_office.id,nyakaa.Address1,nyakaa_office.Address2 from nyakaa inner join nyakaa_office on nyakaa.id = nyakaa_office.id;
select Emp.id,nyakaa_office.id,nyakaa_office.Address2 from Emp inner join nyakaa_office on Emp.id = nyakaa_office.id;
select nyakaa.country,nyakaa_office.state,nyakaa.Address1,nyakaa_office.Address2 from nyakaa right join nyakaa_office on nyakaa.id = nyakaa_office.id;
select nyakaa_office.state,nyakaa.lastName,nyakaa.Address1,nyakaa_office.Address2 from nyakaa right join nyakaa_office on nyakaa.id = nyakaa_office.id;
select Emp.id,nyakaa_office.Address1,nyakaa_office.Address1 from Emp right join nyakaa_office on Emp.id = nyakaa_office.id;
select nyakaa_office.state,nyakaa.lastName from nyakaa right join nyakaa_office on nyakaa.id = nyakaa_office.id;
select nyakaa_office.id,nyakaa.lastName from nyakaa_office left join nyakaa on nyakaa_office.id = nyakaa.id;
select nyakaa.Address1,nyakaa_office.Address2 from nyakaa inner join nyakaa_office on nyakaa.id = nyakaa_office.id;
select nyakaa.Address2,nyakaa_office.Address1 from nyakaa inner join nyakaa_office on nyakaa.id = nyakaa_office.id;
select nyakaa.state,nyakaa_office.country,nyakaa.Address2,nyakaa_office.Address1 from nyakaa right join nyakaa_office on nyakaa.id = nyakaa_office.id;
select nyakaa_office.id,nyakaa.firstname from nyakaa_office right join nyakaa on nyakaa_office.id = nyakaa.id;
select nyakaa_office.state,nyakaa.lastName,nyakaa.Address2,nyakaa_office.Address1 from nyakaa right join nyakaa_office on nyakaa.id = nyakaa_office.id;
select Emp.id,nyakaa_office.Address1,nyakaa_office.Address1,nyakaa_office.id,nyakaa_office.Address2 from Emp right join nyakaa_office on Emp.id = nyakaa_office.id;

 
 
  



 



