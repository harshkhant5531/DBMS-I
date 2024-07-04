
----------------------------------------------PART-A-------------------------------------------
--TABLE CREATE

CREATE TABLE CRICKET(
NAME VARCHAR(40),
CITY VARCHAR(40),
AGE INT
);

INSERT INTO CRICKET VALUES ('Sachin Tendulkar','Mumbai ',30);
INSERT INTO CRICKET VALUES ('Rahul Dravid','Bombay ',35);
INSERT INTO CRICKET VALUES ('M. S. Dhoni ','Jharkhand  ',31);
INSERT INTO CRICKET VALUES ('Suresh Raina','Gujarat ',30);

SELECT*FROM CRICKET


----QUERIES

--Create table Worldcup from cricket with all the columns and data. 
SELECT * INTO WORLDCUP FROM CRICKET;
SELECT*FROM WORLDCUP

--Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY  INTO T20WORLDCUP FROM CRICKET WHERE 1=2;
SELECT*FROM T20WORLDCUP

--Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2;
SELECT * FROM IPL


-----------------------------UPDATE-----------------------------

---Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSITE SET AMOUNT=5000
WHERE AMOUNT=3000;
SELECT*FROM DEPOSITE

---Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME='C.G.ROAD'
WHERE CNAME='ANIL'

SELECT* FROM BORROW

---Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSITE SET ACTNO=111
WHERE CNAME='SANDIP'

SELECT*FROM DEPOSITE


---Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSITE SET AMOUNT=7000
WHERE CNAME='KRANTI'
SELECT*FROM DEPOSITE

---Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERIWEST'
WHERE BNAME='ANDHERI'
SELECT*FROM BRANCH

----Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)

UPDATE DEPOSITE SET BNAME='NEHRUPALACE'
WHERE CNAME='MEHUL'
SELECT*FROM DEPOSITE

---Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use DepositTable)
UPDATE DEPOSITE SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107
SELECT*FROM DEPOSITE

---Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSITE SET ADATE='1995-4-1'
WHERE CNAME='ANIL'
SELECT*FROM DEPOSITE

---Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSITE SET AMOUNT=10000
WHERE CNAME='MINU'
SELECT*FROM DEPOSITE

---Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSITE SET AMOUNT=5000 , ADATE='1996-4-1'
WHERE CNAME='PARMOD' 
SELECT*FROM DEPOSITE



----------------------------------PART-B(SELECTION)------------------------------------

CREATE TABLE EMPLOYEE(
NAME VARCHAR(40),
CITY VARCHAR(40),
AGE INT
);
INSERT INTO EMPLOYEE VALUES ('Jay Patel','Rajkot',30);
INSERT INTO EMPLOYEE VALUES ('Rahul Dave','Baroda',35);
INSERT INTO EMPLOYEE VALUES ('Jeet Patel ','Surat ',31);
INSERT INTO EMPLOYEE VALUES ('Vijay Raval ','Rajkot',30);

SELECT*FROM EMPLOYEE;


---Create table Employee_detail from Employee with all the columns and data. 
SELECT * INTO EMPLOYEE_DETAILS FROM EMPLOYEE;
SELECT*FROM EMPLOYEE_DETAILS

---Create table Employee_data from Employee with first two columns with no data
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2;
SELECT*FROM EMPLOYEE_DATA

---Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2;
SELECT * FROM EMPLOYEE_INFO



-----------------------------------PART-B(UPDATE)----------------------------------------------------


---Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW SET AMOUNT=AMOUNT*1.1
SELECT*FROM BORROW

---Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSITE SET AMOUNT=AMOUNT*1.2
SELECT*FROM DEPOSITE

-----------------------------------PART-C(SELECT INTO)----------------------------------------------------
---Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO Employee_info  SELECT * FROM EMPLOYEE
WHERE CITY='RAJKOT'

SELECT*FROM EMPLOYEE_info

---Insert the Data into Employee_info from Employee whose age is more than 32
INSERT INTO Employee_info  SELECT * FROM EMPLOYEE
WHERE AGE>32
SELECT * FROM Employee_info


-----------------------------------PART-C(UPDATE)---------------------------------------------

----Update amount of loan no 321 to NULL. (Use Borrow Table)
UPDATE BORROW SET LOANNO=NULL WHERE LOANNO=321 
SELECT*FROM BORROW

---Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW SET CNAME=NULL WHERE CNAME='KRANTI'
SELECT*FROM BORROW

---Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL
SELECT*FROM BORROW

---Display the Borrowers whose having branch. (Use Borrow Table)
SELECT CNAME,BNAME FROM BORROW
SELECT*FROM BORROW

----Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.(Use Borrow Table)
UPDATE BORROW  SET AMOUNT=5000,BNAME='VRCE',CNAME='Darshan' WHERE LOANNO=481
SELECT*FROM BORROW


---Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is lessthan 2000.
UPDATE DEPOSITE SET ADATE='2021-01-01' WHERE AMOUNT>2000
SELECT*FROM DEPOSITE

---Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.
UPDATE DEPOSITE SET ADATE=NULL,BNAME='ANDHERI' WHERE ACTNO=110
SELECT*FROM DEPOSITE




