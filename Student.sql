CREATE TABLE users
(
id int unsigned,
name varchar(100),
email varchar(150),
password varchar(100),
contact varchar(15),
address text,
dob date,
gender enum("M","F","0"),
status boolean
)

Select	* From wscube.users;
INSERT INTO users (id, name, email, password, contact, address, dob, gender, status) 
VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '1234567890', '123 Main St, Anytown, USA', '1990-05-15', 'M', 1),
(2, 'Jane Smith', 'jane.smith@example.com', 'p@ssw0rd', '9876543210', '456 Elm St, Othertown, USA', '1988-12-28', 'F', 0),
(3, 'Alex Johnson', 'alex.johnson@example.com', 'securepass', '5551237890', '789 Oak St, Anycity, USA', '1995-09-20', 'M', 1),
(4, 'Emily Brown', 'emily.brown@example.com', 'strongpassword', '7778889990', '101 Pine St, Somewhere, USA', '1987-03-07', 'F', 1),
(5, 'Michael Davis', 'michael.davis@example.com', 'mypass123', '1112223330', '246 Maple St, Anyville, USA', '2000-11-03', 'M', 0),
(6, 'Sophia Wilson', 'sophia.wilson@example.com', '123abc456', '9998887770', '369 Cedar St, Anotherplace, USA', '1992-07-18', 'F', 1),
(7, 'William Martinez', 'william.martinez@example.com', 'password!@#', '4445556660', '852 Birch St, Elsewhere, USA', '1984-04-25', 'M', 0),
(8, 'Olivia Garcia', 'olivia.garcia@example.com', 'garciaolivia', '6667778880', '753 Redwood St, Anyborough, USA', '1997-10-30', 'F', 1),
(9, 'Daniel Rodriguez', 'daniel.rodriguez@example.com', 'danny123', '3334445550', '963 Walnut St, Anystate, USA', '1983-02-14', 'M', 1),
(10, 'Ava Lopez', 'ava.lopez@example.com', 'mysecret', '1231231230', '852 Pineapple St, Anyland, USA', '1998-06-22', 'F', 0);

