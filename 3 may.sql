SELECT *FROM manager1;
-- Finding the second largest salary
SELECT name,salary FROM manager1 ORDER BY salary DESC LIMIT 1,1;

-- Finding the third largest salary
SELECT name,salary FROM manager1 ORDER BY salary DESC LIMIT 2,1;

-- Finding the fourth largest salary
SELECT name, salary FROM manager1 ORDER BY salary DESC LIMIT 4,1;

-- Finding the first largest salary
SELECT name, salary FROM manager1 ORDER BY salary DESC LIMIT 0,1;

 CREATE TABLE orders1(
 order_ID INT ,order_date DATE,customer_id INT);
 CREATE TABLE customer1(
 cus_id INT, cus_name VARCHAR(30),contact_name VARCHAR(40),country VARCHAR(30));
 INSERT INTO orders1 VALUES(110,'2020-4-12',201),
 (111,'2020-9-12',202),(112,'2020-5-12',203),
 (113,'2020-4-2',204),(114,'2020-4-16',205),
 (115,'2020-10-2',206);
 INSERT INTO customer1 VALUES(201,'tharun',983683632,'india'),
 (202,'kumar',983683637,'Iran'),(203,'anu',983683632,'australia'),
 (204,'asha',98368364,'india'),(205,'Roy',93683632,'USA'),
 (206,'harsh',983683699,'russia');
 
--  join
 SELECT orders1.order_id,customer1.cus_name,orders1.order_date FROM orders1
 INNER JOIN customer1 ON orders1.customer_id=customer1.cus_id;
 
 CREATE TABLE staff(
 id INT,name VARCHAR(30),age INT,package INT);
 
 CREATE TABLE payment(
 id INT,da_te DATE,staff_id INT, AMOUNT INT);
 
 INSERT INTO staff VALUES(201,'tharun','20',100000),(202,'kumar','20',100000),
 (203,'tharun','22',150000),(204,'arun','20',300000),
 (205,'tharun','20',200000);
 
  INSERT INTO payment VALUES(401,'2022-4-8',201,100000),(402,'2022-4-01',202,100000),
 (402,'2022-6-8',203,150000),(403,'2022-4-10',204,300000),
 (403,'2022-10-8',205,200000);
 
 SELECT s.id,name,age,amount FROM staff s,payment p WHERE s.id=p.staff_id;
 
 ALTER TABLE orders1 ADD shipping_id INT;
 SELECT *FROM orders1;
UPDATE orders1 SET shipping_id=1234 WHERE order_Id=110;
UPDATE orders1 SET shipping_id=9485 WHERE order_Id=111;
UPDATE orders1 SET shipping_id=4835 WHERE order_Id=112;
UPDATE orders1 SET shipping_id=6954 WHERE order_Id=113;
UPDATE orders1 SET shipping_id=9874 WHERE order_Id=114;
UPDATE orders1 SET shipping_id=4864 WHERE order_Id=115;

CREATE TABLE shipping(
shipping_id INT ,name VARCHAR(40));
INSERT INTO shipping VALUES(1234,'aaaa'),(9485,'bbbb'),(4835,'cccc'),
(6954,'ffff'),(9874,'gggg'),(4864,'tttt');

SELECT ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,SHIPPING.NAME FROM 
((ORDERS1 INNER JOIN CUSTOMER1 ON ORDERS1.customer_ID= CUSTOMER1.CUS_ID)
INNER JOIN SHIPPING ON ORDERS1.SHIPPING_ID = SHIPPING.SHIPPING_ID);

SELECT customer1.cus_name,orders1.order_id FROM Customer1
LEFT JOIN orders1 ON Customer1.cus_id=orders1.customer_id;

SELECT *FROM customer1;
SELECT *FROM orders1;

SELECT cus_name,country,order_date FROM customer1 RIGHT JOIN orders1 ON customer1.cus_id=orders1.customer_id;

SELECT customer1.cus_name,orders1.order_id FROM Customer1
LEFT JOIN orders1 ON Customer1.cus_id=orders1.customer_id ORDER BY customer1.cus_name;

SELECT cus_name,orders1.order_id FROM Customer1 FULL JOIN orders1 ON cus_id=orders1.customer_id;

SELECT customer1.cus_name,orders1.order_id FROM Customer1 LEFT JOIN orders1 ON Customer1.cus_id=orders1.customer_id 
UNION 
SELECT customer1.cus_name,orders1.order_id FROM Customer1 RIGHT JOIN orders1 ON Customer1.cus_id=orders1.customer_id;

CREATE TABLE test(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
c2 VARCHAR(20) NOT NULL,
c3 VARCHAR(20) DEFAULT 'software engineer');

