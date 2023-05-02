create table student(
student_ID int primary key not null,
student_Name varchar(30) not null,
student_marks int not null
);
 INSERT INTO student VALUES(901,"Tharun",98),
 (902,"kumar",98),(903,"sam",92),
 (904,"Ravi",92),(905,"Naveen",93),
 (906,"pooja",99),(907,"suri",98),
 (908,"Sharuk",98),(909,"Nambi",89),
 (910,"Nandini",91);
 
SELECT *FROM student WHERE student_marks = 98;
SELECT *FROM student WHERE student_marks < 98;
SELECT *FROM student WHERE student_marks >= 98;
SELECT *FROM student WHERE student_marks <= 91;
SELECT * FROM student WHERE student_marks != 98;
SELECT *FROM student WHERE student_marks <> 98;
SELECT *FROM student WHERE student_marks BETWEEN 80 and 91;
SELECT *FROM student WHERE student_marks BETWEEN 80 and 91 ORDER BY student_marks;
SELECT *FROM student WHERE student_marks BETWEEN 80 and 91 ORDER BY student_marks ASC;
SELECT *FROM student WHERE student_marks BETWEEN 80 and 91 ORDER BY student_ID DESC;
SELECT *FROM student WHERE NOT student_marks = 98;
SELECT DISTINCT(Address) FROM rgm;
SELECT COUNT(DISTINCT(Address)) FROM rgm;

SELECT * FROM student WHERE NOT student_marks=98 and NOT student_marks=99;

SELECT *FROM rgm LIMIT 3;
SELECT COUNT(Address),Address FROM rgm GROUP BY Address;

SELECT *FROM RGM WHERE college="RGM" ORDER BY ID DESC LIMIT 5;



CREATE TABLE dob(
date_ DATE NOT NULL
);
INSERT INTO dob VALUES("2002-10-26");
select *from dob;
-- Task on the class
CREATE TABLE salesman(
salesman_id int primary key not null,
name varchar(30) not null,
city varchar(20) not null,
commission  float not null
);
INSERT INTO salesman VALUES(2001,"John","Kurnool",5000),
(2002,"Raghu","Ananthapur",8000),(2009,"Nandu","Banglore",15000),
(2006,"Ram","Nandyal",9000);

SELECT salesman_id,commission FROM salesman;



 