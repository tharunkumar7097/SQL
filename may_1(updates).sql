show databases;
SELECT *FROM rgm;
UPDATE rgm SET name="Arun" WHERE contact_Number=9734189; -- update single value

UPDATE rgm SET session="java",college="RGM"  WHERE contact_Number=9734189; -- updating multiple values

SELECT * FROM student;

CREATE TABLE test(student_ID int primary key not null,
student_Name varchar(30) not null,
student_marks int not null);

INSERT INTO test SELECT *FROM student; -- copying data from one table to another table

TRUNCATE TABLE test; -- delete data not table structure
select*from student;
DELETE FROM student where student_Name="suri"; -- delete entire row

DROP table test;

ALTER TABLE  student RENAME COLUMN student_name to name; -- rename column name

ALTER TABLE student RENAME to student_rgm; -- rename table name

ALTER table student_rgm ADD Address varchar(50); -- add column to table
UPDATE student_rgm SET Address="Hyderabad" where student_ID=906; -- add data to column

ALTER TABLE student_rgm MODIFY column Address varchar(60);
ALTER TABLE student_rgm DROP column Address;

DELETE FROM dob;
SELECT MIN(student_marks) from student_rgm;
SELECT MAX(student_marks) from student_rgm;
SELECT AVG(student_marks) from student_rgm;
SELECT SUM(student_marks) as total from student_rgm;

SELECT COUNT(student_marks) as COUNT from student_rgm;


CREATE DATABASE exercise;
use exercise;
CREATE table customer(ID int primary key not null,name varchar(20),city varchar(30),Grade int,salesman_iD int);
INSERT INTO customer VALUES(101,"Tharun","Ananthapur",90,201),(102,"kruthi","Banglore",190,202),
(103,"Sam","Kurnool",160,203),(104,"Bharath","Ananthapur",170,204),
(105,"Roy","Nandyal",290,201),(106,"Tanu","Ananthapur",210,206),
(107,"kumar","Ananthapur",90,201),(108,"Anu","Ananthapur",90,208),
(109,"Tharun","Ananthapur",90,201),(110,"Anil","Ananthapur",90,210);
drop table customer;

select *FROM customer where Grade>100 ORDER BY Grade ASC;
select *FROM customer where city="Ananthapur" and Grade<=100;

select name FROM customer where city="Hyderabad" OR Grade>100;

select *from customer where city="kerala" or not Grade>100;

select *from customer  where not city="Mumbai" or  Grade>200;


CREATE TABLE ORDERS(
ORDER_NUM INT,
PURCHASE_AMT INT,
ORDER_DATE DATE,
CUSTOMER_ID INT,
SALESMAN_ID INT);
INSERT INTO ORDERS VALUES(2003,500,'2010-10-12',6785,204),
(2004,700,'2015-10-12',6786,20),(2008,1500,'2019-5-19',6789,604),
(20010,500,'2010-10-12',6783,104),(2008,1900,'2010-10-29',785,404);

SELECT *FROM ORDERS WHERE NOT ORDER_DATE = '2023-04-30' AND SALESMAN_ID>202 AND PURCHASE_AMT>1000;

CREATE TABLE SALESMAN(
salesman_id int primary key not null,name varchar(30),city varchar(30),commission float);
INSERT INTO salesman values(200,"Das","kurnool",0.25),
(201,"Das","Nandyal",0.45),(202,"Das","kurnool",0.115),
(203,"Das","kurnool",0.45),(204,"Das","kurnool",0.25);

SELECT *FROM salesman WHERE commission BETWEEN 0.25 and 0.75;

SELECT *FROM salesman WHERE name LIKE "k%";

ALTER TABLE salesman Add Address varchar(50);
UPDATE salesman set address="HYD" where salesman_id=200;
UPDATE salesman set address="ATP" where salesman_id=201;
UPDATE salesman set address="KNL" where salesman_id=202;
UPDATE salesman set address="NDL" where salesman_id=203;
UPDATE salesman set address="ATP" where salesman_id=204;
select *from salesman;
drop table salesman;
 select *from salesman order by address desc;
 
 select address as salesman_address from salesman order by address desc;




