USE PP_PRACTICE;
create table  bank_details(
age int,
job varchar(30),
marital varchar(30),
education varchar(30),
`default` varchar(30),
balance int , 
housing varchar(30),
loan varchar(30) , 
contact varchar(30),
`day` int,
`month` varchar(30) , 
duration int , 
campaign int,
pdays int , 
previous int , 
poutcome varchar(30) , 
y varchar(30));

SELECT * FROM BANK_DETAILS;

DELIMITER $$
CREATE PROCEDURE TABLE_PRO() 
BEGIN
SELECT * FROM BANK_DETAILS;
END;
$$

CALL TABLE_PRO();
-- CREATE A PROCEDURE FIND AVERAGE BALANCE WITH RESPERCT TO JOBROLE
DELIMITER $$
CREATE PROCEDURE JOBROLE_BAL(IN A VARCHAR(30))
BEGIN
SELECT AVG(BALANCE) AS AVG_BAL FROM BANK_DETAILS WHERE JOB=A;
END;
$$

CALL JOBROLE_BAL('technician');
SELECT AVG(BALANCE) AS AVG_BAL FROM BANK_DETAILS WHERE JOB='technician';






