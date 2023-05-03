CREATE TABLE car(
car_no int primary key not null, car_name varchar(20),car_price int ,car_quantity int);
INSERT INTO car VALUES(112,'tesla',1200000,2),(113,'Audi',1200000,4),
(114,'suziki',900000,2),(115,'BMW',1900000,2),
(116,'kia',1500000,4),(118,'swift',1000000,3);
SELECT *FROM car;

SELECT count(car_name),car_price FROM car GROUP BY car_price;
SELECT count(car_name) AS count_number,car_price FROM car GROUP BY car_price;
SELECT count(car_name) FROM car GROUP BY car_price HAVING car_price>1200000;
SELECT count(*) FROM car GROUP BY car_price HAVING car_price>1200000;

CREATE TABLE visit(entry_date DATE,price INT,duration INT);

INSERT INTO visit VALUES('2023-10-04',1000,20),('2023-9-04',900,20),
('2023-10-4',1000,20),('2023-10-5',1000,30),('2023-10-4',1100,25),
('2023-10-4',2000,29);

SELECT *FROM visit;

SELECT entry_date,count(*) FROM visit GROUP BY entry_date;

SELECT Extract(YEAR FROM entry_date) as YEAR,
EXTRACT(MONTH FROM entry_date) as MONTH,
ROUND(AVG(PRICE),2) FROM visit 
GROUP BY EXTRACT(YEAR FROM entry_date),EXTRACT(MONTH FROM entry_date)
ORDER BY EXTRACT(YEAR FROM entry_date),EXTRACT(MONTH FROM entry_date);

SELECT *FROM visit;

SELECT entry_date,ROUND(AVG(PRICE),2) AS avg_price FROM visit GROUP BY entry_date HAVING count(*)>1 ORDER BY  entry_date;

SELECT entry_date,ROUND(AVG(PRICE),2) AS avg_price FROM visit GROUP BY entry_date HAVING count(*)>3 ORDER BY  entry_date;

SELECT entry_date,ROUND(AVG(PRICE),3) AS avg_price FROM visit WHERE duration>=25
GROUP BY entry_date HAVING count(*)>1 ORDER BY  entry_date;

SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR,EXTRACT(MONTH FROM ENTRY_DATE)
AS MONTH,EXTRACT(DAY FROM ENTRY_DATE) AS DAY1,ROUND(AVG(PRICE),2) FROM VISIT GROUP BY
EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),EXTRACT(DAY FROM ENTRY_DATE) ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),
EXTRACT(MONTH FROM ENTRY_DATE);

SELECT *FROM customer;

SELECT city, count(*) AS customer_city FROM customer GROUP BY city;

CREATE TABLE employee(
emp_id int ,name varchar(30),age int,country varchar(30));

INSERT INTO employee VALUES(100,'tharun',50,'INDIA'),
(101,'Kumar',20,'Australia'),(103,'tharuni',40,'Iran'),
(104,'arun',50,'America'),(105,'Anu',59,'INDIA');

SELECT *FROM employee;
SELECT COUNT(country) AS country_NO,country FROM employee GROUP BY country HAVING COUNT(country)>=2;

SELECT country,COUNT(country) FROM employee GROUP BY country HAVING MAX(age)>=30;
SELECT country,COUNT(country) FROM employee GROUP BY country HAVING MIN(age)>=30;

use herovired;
CREATE TABLE manager1(ID int primary key not null,name varchar(20),Gender varchar(10),
age int,salary int);
INSERT INTO manager1 VALUES(101,'tharun','M',20,1000000),
(102,'Roy','M',21,1400000),(103,'arun','M',25,900000),
(104,'anna','F',20,800000),(105,'Anu','F',20,1000000),
(106,'Kumar','M',20,1500000);
SELECT name,sum(salary) AS total_salary FROM manager1 GROUP BY name HAVING SUM(salary) >110000 ORDER BY name;
SELECT age FROM manager1 GROUP BY age HAVING COUNT(age)>2;
SELECT age FROM manager1 GROUP BY age HAVING COUNT(age)>1;

SELECT gender,MAX(salary) as max_salary FROM manager1 GROUP BY gender HAVING MAX(salary) < 200000;
SELECT gender,MIN(salary) as min_salary FROM manager1 GROUP BY gender HAVING MIN(salary) < 200000;

DELIMITER  //
CREATE PROCEDURE GetManagerInfo()
  BEGIN
	select * FROM Manager1;
  END //
  
   //
CREATE PROCEDURE GetManagerAge()
  BEGIN
	select * FROM Manager1 WHERE age=20;
  END //
  
call GetManagerAge()