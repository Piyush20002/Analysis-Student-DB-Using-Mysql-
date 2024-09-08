#createing table for cities
CREATE TABLE cities
(
	cid int, 
	name varchar(100)
)

INSERT INTO cities (cid, name)
VALUES 
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Bangalore'),
(4, 'Kolkata'),
(5, 'Chennai'),
(6, 'Hyderabad'),
(7, 'Pune'),
(8, 'Ahmedabad');

#creating table for students4
CREATE TABLE students4

(
	id INT NOT NULL unique auto_increment,
	name varchar(100) not null,
	email varchar(100) not null unique,
	city_id int null,
	primary key(id),
	foreign key (city_id) references cities(cid)
) 

INSERT INTO students4 (name,email,city_id)
VALUES
('Bhagirath', 'bhagirath@wscubetech.com', 1)

#making primary key and Foreign key
INSERT INTO students4 (name,email,city_id)
VALUES
('Ram','ram@wscubetech.com', 4)

#INNER JOINT from students4 joint with cities on studentsid = cities id
SELECT * FROM students4
INNER JOIN cities
ON students4.city_id = cities.cid;

#OR we can wright
SELECT * FROM students4
JOIN cities
ON students4.city_id = cities.cid;

#left joint
SELECT * FROM students LEFT JOIN cities
ON students4.city = cities.id;

#Right joint
SELECT * FROM students RIGHT JOIN cities
ON students4.city = cities.id;

#Cross joint
SELECT * from students4 CROSS JOIN cities
#OR
SELECT * from cities CROSS JOIN students4


# Creating table for courses
CREATE TABLE courses
(
	id int, 
	name varchar(100)
)

INSERT INTO courses (id, name)
VALUES 
(1, 'Machine Learning'),
(2, 'Software Engineering'),
(3, 'Data Science'),
(4, 'Cybersecurity'),
(5, 'Database Management'),
(6, 'Web Development'),
(7, 'Network Security');

#multiple joint 
SELECT * FROM students4
INNER JOIN cities
ON students4.cid = cities.id
INNER JOIN courses
ON students4.courseid = courses.id


SELECT * FROM students4
LEFT JOIN cities
ON students4.cid = cities.id
INNER JOIN courses
ON students4.courseid = courses.id

#SubQuery with EXISTS & NOT EXISTS
select name from students4
where cid = (select id from cities where name = 'Pune');

select name from students4
where exists (select id from cities where name = 'Pune');

select name from students4
where NOT exists (select id from cities where name = 'Pune');

#GROUP BY & HAVING Clause
select cid, COUNT(cid) from students4 group by (cid)

#GROUP BY & HAVING Clause with joints
SELECT cid, cities.name, COUNT(cid) from students4
inner join cities
on students4.cid = cities.id
group by (cid)

#
select cid, cities.name, COUNT(cid) as total from students4
inner join cities
on students4.cid = cities.id
group by (cid)

#
select cid, cities.name, COUNT(cid) as total from students4
inner join cities
on students4.cid = cities.id
group by (cid)
having COUNT(cid) = 1

#
select courseid, courses.name, COUNT(courseid) as total from students4
inner join courses
on students4.courseid = courses.id
group by (ourseid)
-- having COUNT(cid) = 1

#
select courseid, courses.name, COUNT(courseid) as total from students
inner join courses
on students.courseid = courses.id
group by (courseid)
having COUNT(courseid) > 2














 

 


