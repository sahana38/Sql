create table fooddetail(id int not null,resturant varchar(40),food_item varchar(40),Quantity int,price int, check(price>= 45 AND price<=200)); 

INSERT INTO fooddetail values(1,'shubhamtindi','biriyani',3,150),(2,'anu','veg fried rice',4,160),(3,'muskan','eggrice',3,180),(4,'sagar','palav',4,200),(5,'dhanu','vegBiriyani',4,100),(6,'kan','rice',3,50);

lock;

LOCK TABLE fooddetail read;

UPDATE fooddetail SET price =150 where id = 1;

UNLOCK tables;
UPDATE fooddetail SET price =150 where id = 1;

SELECT * FROM fooddetail limit 2;

select * from fooddetail order by id desc limit 2;

select * from fooddetail order by food_item desc limit 2;

GREATEST:

35,56,66,44,55,32,23,65

SELECT greatest(35,56,66,44,55,32,23,65);

/*DATEDIFF:DATE DIFFERENCE*/

SELECT datediff('2022-11-01','2022-10-10');

/*dayname:*/
SELECT dayname('2022-10-9');

SELECT dayofyear('2022-10-9');

-----------------------------------------------------------------------------------
CREATE TABLE  continents(id int, name varchar(30),no_of_countries int , population bigint, area varchar(30));

INSERT INTO continents VALUES(1,'Asia', 3261050390, 31033131),	(2,'Africa', 1340598147	, 29648481),(3,'Europe',747636026,22134900),(4,'North America',	592072212,	21330000),
(5,'South America', 430759766 ,	174611126),(6,'Australia/Oceania', 43111704, 8486460),(7,'Antarctica',0,13720000);	
