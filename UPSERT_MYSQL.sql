USE PP_PRACTICE;
CREATE TABLE PP_STUDENT (
Stud_ID int auto_increment PRIMARY KEY,
Name varchar(45) DEFAULT NULL,
Email varchar(45) NOT NULL UNIQUE,
City varchar(25) DEFAULT NULL
);

SELECT * FROM PP_STUDENT;

INSERT INTO PP_STUDENT(Stud_ID, Name, Email, City)
VALUES (1,'Stephen', 'stephen@javatpoint.com', 'Texas'),
(2, 'Joseph', 'Joseph@javatpoint.com', 'Alaska'),
(3, 'Peter', 'Peter@javatpoint.com', 'California');

INSERT INTO PP_STUDENT(Stud_ID, Name, Email, City)
VALUES (4,'Donald', 'donald@javatpoint.com', 'New York'),
(5, 'Joseph', 'Joseph@javatpoint.com', 'Chicago');

-- 1.INSERT IGNORE
INSERT IGNORE INTO PP_Student(Stud_ID, Name, Email, City)
VALUES (4,'Donald', 'donald@javatpoint.com', 'New York'),
(5, 'Joseph', 'Joseph@javatpoint.com', 'Chicago');



-- UPSERT USING REPLACE 
REPLACE INTO PP_Student 
VALUES(2, 'Joseph', 'joseph@javatpoint.com', 'Los Angeles');

SELECT * FROM PP_STUDENT;
--  USING ON UPDATE KEY 
INSERT INTO PP_STUDENT
VALUES(4,'-','-','-')
ON DUPLICATE KEY UPDATE CITY='boston', name= 'donald';

