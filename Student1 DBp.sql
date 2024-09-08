#Student DATA

CREATE TABLE Student
(
id int unsigned,
name varchar(100),
email varchar(150),
age int,
city text
)

Select	* From wscube.student;
INSERT INTO Student (id, name, email, age, city) VALUES
(1, 'Alice Johnson', 'alice@example.com', 25, 'New York'),
(2, 'Bob Smith', 'bob@example.com', 30, 'Los Angeles'),
(3, 'Charlie Brown', 'charlie@example.com', 22, 'Chicago'),
(4, 'David Lee', 'david@example.com', 28, 'Houston'),
(5, 'Emma Davis', 'emma@example.com', 35, 'Phoenix'),
(6, 'Frank Wilson', 'frank@example.com', 29, 'Philadelphia'),
(7, 'Grace Garcia', 'grace@example.com', 27, 'San Antonio'),
(8, 'Henry Martinez', 'henry@example.com', 32, 'San Diego'),
(9, 'Isabella Lopez', 'isabella@example.com', 26, 'Dallas'),
(10, 'Jack Thompson', 'jack@example.com', 31, 'San Jose');

# Aliases for name column as 'Student Name'
SELECT id,name AS "Student Name",age FROM student

# Also Aliases for age column as 'Age'
SELECT id,name AS "Student Name",age as "Age" FROM student

# Checking age is greater then 27
SELECT * FROM student WHERE age > 27;

# Checking age is greater then = 27
SELECT * FROM student WHERE age >= 27;

# Checking age is lesser then = 27
SELECT * FROM student WHERE age <= 27;

# Finding Where age = 30
SELECT * FROM student WHERE age = 30;

# Finding where whose age is not 30
SELECT * FROM student WHERE age != 30;

# Searching name of a single person 
SELECT * FROM student WHERE name = "Frank Wilson";


