-----------------------------------(PART-A)(ALTER)-----------------------------------------

---Add two more columns City VARCHAR (20) and Pincode INT
ALTER TABLE DEPOSITE ADD CITY VARCHAR(20),PINCODE INT
SELECT*FROM DEPOSITE

---Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE ALTER COLUMN CNAME VARCHAR(35)
SELECT*FROM DEPOSITE

---Change the data type DECIMAL to INT in amount Column
ALTER TABLE DEPOSITE ALTER COLUMN AMOUNT INT
SELECT*FROM DEPOSITE

---Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSITE.ACTNO','ANO','COLUMN'
SELECT*FROM DEPOSITE

---Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE DROP COLUMN CITY
SELECT*FROM DEPOSITE

---Change name of table DEPOSIT to DEPOSIT_DETAIL
EXEC SP_RENAME 'DEPOSITE','DEPOSIT_DETAIL'
SELECT*FROM DEPOSIT_DETAIL


------------------------------------------PART-B----------------------------------------------

---Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE','COLUMN'
SELECT*FROM DEPOSIT_DETAIL

---Delete Column AOPENDATE from the DEPOSIT_DETAIL table
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN  AOPENDATE 
SELECT*FROM DEPOSIT_DETAIL

---Rename Column CNAME to CustomerName.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName','COLUMN'
SELECT*FROM DEPOSIT_DETAIL


---------------------------------------------PART-C-------------------------------------------------

------------->CREATING STUDENT_DETAIL TABLE

CREATE TABLE STUDENT_DETAIL(
ENROLLMENT_NO VARCHAR(20),
NAME VARCHAR(25),
CPI DECIMAL(5,2),
BIRTHDATE DATETIME
);

SELECT*FROM STUDENT_DETAIL

---Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL ,BACKLOG INT NULL
SELECT*FROM STUDENT_DETAIL

---Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)
SELECT*FROM STUDENT_DETAIL

---Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT
SELECT*FROM STUDENT_DETAIL

---Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO' , 'COLUMN'
SELECT*FROM STUDENT_DETAIL

---Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY
SELECT*FROM STUDENT_DETAIL

---Change name of table student_detail to STUDENT_MASTER.
 EXEC SP_RENAME  STUDENT_DETAIL , STUDENT_MASTER
 SELECT*FROM STUDENT_MASTER








-----------------------------------(PART-A)Delete,Truncate,Drop-----------------------------------------

---Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000
SELECT*FROM DEPOSIT_DETAIL

---Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME=' CHANDI'
SELECT*FROM DEPOSIT_DETAIL

---Delete all the accounts having account number (ANO) is greater than 105
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105
SELECT*FROM DEPOSIT_DETAIL

---Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL
SELECT*FROM DEPOSIT_DETAIL

---Remove Deposit_Detail table. (Use Drop)
 DROP TABLE DEPOSIT_DETAIL
 SELECT*FROM DEPOSIT_DETAIL

 --------------------------------------------PART-B----------------------------------------------------

 ---->CRAEATING NEW EMPLOYEE_MASTER TABLE

CREATE TABLE EMPLOYEE_MASTER(
 EMPNO INT ,
 EMPNAME VARCHAR(25),
 JOININGDATE DATETIME,
 SALARY DECIMAL(8,2),
 CITY VARCHAR(20)
);
INSERT INTO EMPLOYEE_MASTER VALUES(101,'Keyur','2002-1-5',12000,'Rajkot');
INSERT INTO EMPLOYEE_MASTER VALUES(102,'Hardik','2004-2-15',14000,'Ahmedabad');
INSERT INTO EMPLOYEE_MASTER VALUES(103,'Kajal','2006-3-14',15000,'Baroda');
INSERT INTO EMPLOYEE_MASTER VALUES(104,'Bhoomi','2005-6-23',12500,'Ahmedabad');
INSERT INTO EMPLOYEE_MASTER VALUES(105,'Harmit','2004-2-15',14000,'Rajkot');
INSERT INTO EMPLOYEE_MASTER VALUES(106,'Mitesh','2001-9-25',5000,'Jamnagar');
INSERT INTO EMPLOYEE_MASTER VALUES(107,'Meera',Null,7000,'Morbi');
INSERT INTO EMPLOYEE_MASTER VALUES(108,'Kishan','2003-2-6',10000,NULL);

SELECT*FROM EMPLOYEE_MASTER;


--- Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000
SELECT*FROM EMPLOYEE_MASTER

---Delete all the Employees who belongs to �RAJKOT� city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'
SELECT*FROM EMPLOYEE_MASTER

---Delete all the Employees who joined after 1-1-2007
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>'2007-1-1'
SELECT*FROM EMPLOYEE_MASTER

---Delete the records of Employees whose joining date is null and Name is not null
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL AND EMPNAME!=NULL
SELECT*FROM EMPLOYEE_MASTER

---Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY=10000
SELECT*FROM EMPLOYEE_MASTER

---Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY!=NULL
SELECT*FROM EMPLOYEE_MASTER

---Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER
SELECT*FROM EMPLOYEE_MASTER

---Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER
SELECT*FROM EMPLOYEE_MASTER