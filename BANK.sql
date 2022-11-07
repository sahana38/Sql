CREATE DATABASE bank;
use bank;

CREATE TABLE bank_details(id int, name varchar(30), state varchar(30));

INSERT INTO bank_details VALUES(1,'SBI_RAJAJINAGARA','KARNATAKA'), (2,'SBI_BTM','KARNATAKA'),(3,'SBI-JAYNAGAR','KARNATAKA'),(4,'JPNAGAR','KERALA'),(5,'SBI_KERALA','KERALA'),
(6,'SBI_KER','KERALA'),(7,'SBI_AP','ANDHR'),(8,'SBI_ANDHR','ANDHR'),(9,'SBI_TS','TELANGANA'),(10,'SBI_MH','MAHARASTRA'),(11,'SBI_MHR','MAHARASTRA'),
(12,'SBIDH','DELHI'),(13,'SBI_DL','DELHI');

SELECT * FROM bank_details group by state;

SELECT state,name, count(name) from bank_details group by state;

SELECT name,state, count(name) as count from bank_details group by name HAVING state = 'KERALA';

-----------------------------------------------------------------------------------------------------------

CREATE TABLE class(id int, name varchar(30), gender varchar(30), state varchar(30));

INSERT INTO class VALUES(1, "shalini", "F", "karnataka"),(2,"swapna","F","karnataka"),(3,"Geeta","F","kerala"),
(4,"sahana", "F", "karnataka"),(5,"akash", "M","AP"),(6,"vishak","M","UP"),(7,"Sagar","M","Gujarat");

select * from class;

SELECT state,name, count(name) from class group by state;
SELECT id,name, count(name) from class group by state;
SELECT gender,name, count(name) from class group by state;
SELECT id,gender, count(name) from class group by state;
SELECT state,gender, count(name) from class group by state;

SELECT state,name, max(name) from class group by state;
SELECT id,name, max(name) from class group by state;
SELECT gender,name, max(name) from class group by state;
SELECT id,gender, max(name) from class group by state;
SELECT state,gender, max(name) from class group by state;

SELECT state,name, min(id) from class group by state;
SELECT id,name, min(id) from class group by state;
SELECT gender,name, min(id) from class group by state;
SELECT id,gender, min(id) from class group by state;
SELECT state,gender, min(id) from class group by state;

SELECT state,name, sum(gender) from class group by state;
SELECT id,name, sum(gender) from class group by state;
SELECT gender,name, sum(gender) from class group by state;
SELECT id,gender, sum(gender) from class group by state;
SELECT state,gender, sum(gender) from class group by state;

SELECT name,state, count(name) as count from class group by name HAVING state = 'kerala';
SELECT name,state, avg(name) as count from class group by name HAVING state = 'karnataka';
SELECT name,state, sum(name) as count from class group by name HAVING state = 'AP';
SELECT name,state, max(name) as count from class group by name HAVING state = 'UP';
SELECT name,state, min(name) as count from class group by name HAVING state = 'karnataka';

SELECT id,state, count(gender) as count from class group by name HAVING state = 'kerala';
SELECT id,state, avg(gender) as count from class group by name HAVING state = 'karnataka';
SELECT id,state, sum(gender) as count from class group by name HAVING state = 'AP';
SELECT id,state, max(gender) as count from class group by name HAVING state = 'UP';
SELECT id,state, min(gender) as count from class group by name HAVING state = 'karnataka';

SELECT state,gender, count(id) as count from class group by name HAVING state = 'kerala';
SELECT state,gender, avg(id) as count from class group by name HAVING state = 'karnataka';
SELECT state,gender, sum(id) as count from class group by name HAVING state = 'AP';
SELECT state,gender, max(id) as count from class group by name HAVING state = 'UP';
SELECT state,gender, min(id) as count from class group by name HAVING state = 'karnataka';

SELECT state, count(name) as count from class group by name HAVING state = 'kerala';
SELECT state,avg(name) as count from class group by name HAVING state = 'karnataka';
SELECT state, sum(name) as count from class group by name HAVING state = 'AP';
SELECT state,gender, max(name) as count from class group by name HAVING state = 'UP';
SELECT state,min(name) as count from class group by name HAVING state = 'karnataka';

SELECT state, count(state) as count from class group by name HAVING state = 'kerala';
SELECT state,avg(state) as count from class group by name HAVING state = 'karnataka';
SELECT state, sum(state) as count from class group by name HAVING state = 'AP';
SELECT state,gender, max(state) as count from class group by name HAVING state = 'UP';
SELECT state,min(state) as count from class group by name HAVING state = 'karnataka';

--------------------------------------------------------------------------------------------------------
REVERSE:

SELECT REVERSE(name) from class;

/*lpad:
lpad(string,15,stringtobeadded);
lpad(originalstring,15(length of the original string after adding),stringtobeadded);*/

select lpad('xworkz',10,'A');
select rpad('xwork',9,'S');

------------------------------------------------------------
create table fooddetails(id int not null,resturant varchar(40),food_item varchar(40),Quantity int,price int, check(price>= 45 AND price<=200)); 

INSERT INTO fooddetails values(1,'shubhamtindi','biriyani',3,150),(2,'anu','veg fried rice',4,160),(3,'muskan','eggrice',3,180),(4,'sagar','palav',4,200),(5,'dhanu','vegBiriyani',4,100),(6,'kan','rice',3,50);
;
 
 select greatest('muskan', 'huchnayi' , 'Annakarmel');







