CREATE TABLE Students2
(
id INT NOT NULL unique,
name varchar(100) not null,
email varchar(150) not null unique,
age tinyint check (age >= 18),
city text,
gender enum("M","F","0"),
status boolean default 1
)

Select	* From wscube.students2;
INSERT INTO Students2 (id, name, email, age, city, gender ) 
VALUES
(1, 'Alice', 'alice@example.com', 20, 'New York', 'F'),
(2, 'Bob', 'bob@example.com', 22, 'Los Angeles', 'M'),
(3, 'Charlie', 'charlie@example.com', 21, 'Chicago', 'M'),
(4, 'Diana', 'diana@example.com', 19, 'Houston', 'F'),
(5, 'Eva', 'eva@example.com', 23, 'Miami', 'F'),
(6, 'Frank', 'frank@example.com', 20, 'San Francisco', 'M'),
(7, 'Grace', 'grace@example.com', 22, 'Seattle', 'F'),
(8, 'Henry', 'henry@example.com', 21, 'Boston', 'M'),
(9, 'Isabel', 'isabel@example.com', 24, 'Austin', 'F'),
(10, 'Jack', 'jack@example.com', 18, 'Denver', 'M');

# showing whose age is greater than 18 and smaller than 28
SELECT * FROM students2
WHERE age >= 18 AND age <=21

# showing whose age is greater than 18 and smaller than 28 also by city and gender
SELECT * FROM students2
WHERE age >= 18 AND age <=21 AND city = "Houston"  AND gender = "F"

#showing whose city is not 'Houston'
SELECT * FROM students2
WHERE NOT city = "Houston"  

#showing whose city is not 'Houston' and not 'New York'
SELECT * FROM students2
WHERE NOT city = "Houston" AND NOT city = "New York";

#finding Students age Whose age is 19,20,21
SELECT * FROM students2 
WHERE age = 19 OR age = 20 OR age = 21;

SELECT * FROM students2
WHERE age IN (19,21,23);

#Finding Whose name starting with 'a'
SELECT * FROM students2 WHERE name LIKE "a%";

#Finding Whose name end letter with 'a'
SELECT * FROM students2 WHERE name LIKE "a%";

#Finding 'a' letter from all the data 
SELECT * FROM students2 WHERE name LIKE "%a%";

SELECT * FROM students2 WHERE city LIKE "A_____";

SELECT * FROM students2 WHERE city LIKE "a____%";

SELECT * FROM students2 WHERE name LIKE "%_a_%";

#Finding Students age between 19 and 22
SELECT * FROM students2 WHERE age BETWEEN 20 AND 23

#Finding Students age not between 19 and 22
SELECT * FROM students2 WHERE age NOT BETWEEN 20 AND 23

#Showing Students data by ascending order name column
SELECT * FROM students2 ORDER BY name ASC

#Showing Students data by descending order name column
SELECT * FROM students2 ORDER BY name DESC

#Showing Students data by ascending order age column
SELECT DISTINCT age FROM students2 ORDER BY age ASC

#Showing Students data by descending order age column
SELECT DISTINCT age FROM students2 ORDER BY age DESC

# INSERTING the NULL Data 
INSERT INTO students2  (id, name, email, age, city, gender ) 
VALUES 
(11, 'Shaili', 'shaili@wscubetech.com', 27, 'Jodhpur', NULL)
(12, 'Jenny John', 'jennyjohn@wscubetech.com',26,NULL,NULL)

#Showing the gender is NULL values in Data 
SELECT * FROM students2 WHERE gender IS NULL

#Showing the gender and city is NULL values in Data 
SELECT * FROM students2 WHERE gender IS NULL AND city IS NULL

#Finding the Limit as 5
SELECT * FROM students2 LIMIT 5

SELECT * FROM students2 ORDER BY name DESC

SELECT * FROM students2 ORDER BY name DESC LIMIT 5

SELECT * FROM students2 ORDER BY age DESC LIMIT 5

#Finding where age is greater than 20 and Limit is 5
SELECT * FROM students2 WHERE age > 20 LIMIT 5

#Showing Limit as 5 and OFFset 1 means ID will start with 2
SELECT * FROM students2 LIMIT 5 OFFSET 1

SELECT * FROM students2 LIMIT 5 OFFSET 10





