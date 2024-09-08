CREATE TABLE Students3
(
id INT NOT NULL unique,
name varchar(100) not null,
email varchar(150) not null unique,
age tinyint check (age >= 18),
city text,
gender enum("M","F","0"),
fees int
)

INSERT INTO Students3 (id, name, email, age, city, gender, fees)
VALUES
(1, 'Aarav', 'aarav@example.com', 21, 'Mumbai', 'M', 11000),
(2, 'Diya', 'diya@example.com', 20, 'Delhi', 'F', 4050),
(3, 'Ishaan', 'ishaan@example.com', 22, 'Bangalore', 'M', 6200),
(4, 'Khushi', 'khushi@example.com', 23, 'Kolkata', 'F', 10000),
(5, 'Manan', 'manan@example.com', 24, 'Chennai', 'M', 5250),
(6, 'Neha', 'neha@example.com', 25, 'Hyderabad', 'F', 8300),
(7, 'Ojas', 'ojas@example.com', 22, 'Pune', 'M', 7906),
(8, 'Prisha', 'prisha@example.com', 21, 'Ahmedabad', 'F', 9900);

# Counting ID where fees is greater than 5000
SELECT count(id) FROM students3 WHERE fess > 5000;

#Sum of stuents fees
SELECT sum(fees) FROM students3;

#Avg of students fees 
SELECT avg(fees) FROM students3

#min of students fees 
SELECT min(fees) FROM students3;

#max of students fees
SELECT max(fees) FROM students3;

#Delete queries for id = 4
delete from students3 where id = 4;
delete from students where id IN (5,6);

#update fees for id 1 then rollback
COMMIT;
UPDATE students3 SET fees =10000 WHERE id = 1;
ROLLBACK; 

COMMIT;
UPDATE students3 SET fees =15000 WHERE id = 1;
COMMIT;
delete from students where id = 15
ROLLBACK; 






 

