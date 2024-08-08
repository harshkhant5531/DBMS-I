-------------------------------------------------(PART-A)------------------------------------------------------------------

CREATE TABLE STUDENT_INFO
(
	RNO INT,
	SNAME VARCHAR(10),
	BRANCH VARCHAR(15),
	SPI DECIMAL(3,2),
	BKLOG INT
)


INSERT INTO STUDENT_INFO(RNO,SNAME,BRANCH,SPI,BKLOG)
VALUES	(101, 'Raju', 'CE', 8.80, 0),
		(102, 'Amit' ,'CE', 2.20 ,3),
		(103 ,'Sanjay' ,'ME',1.50 ,6),
		(104 ,'Neha', 'EC', 7.65, 1),
		(105 ,'Meera' ,'EE' ,5.52 ,2),
		(106 ,'Mahesh', 'EC', 4.50, 3)

SELECT * FROM STUDENT_INFO


---Create a view Personal with all columns.
CREATE VIEW Personal AS 
SELECT * FROM STUDENT_INFO
SELECT*FROM Personal

---Create a view Student_Details having columns Name, Branch & SPI.
CREATE VIEW Student_Details
AS SELECT SNAME,BRANCH,SPI FROM STUDENT_INFO
SELECT*FROM Personal


---Create a view AcademicData having columns RNo, Name, Branch.
CREATE VIEW AcademicData AS
SELECT RNO,SNAME,BRANCH FROM STUDENT_INFO
 SELECT*FROM AcademicData

---Create a view Student_ bklog having all columns but students whose bklog more than 2.
CREATE VIEW Student_bklog AS 
SELECT*FROM STUDENT_INFO WHERE bklog>2
SELECT*FROM Student_bklog

---Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
CREATE VIEW Student_Pattern AS
SELECT RNO,SNAME,BRANCH FROM STUDENT_INFO WHERE SNAME LIKE '____';
SELECT*FROM Student_Pattern

---Insert a new record to AcademicData view. (107, Meet, ME)

INSERT INTO AcademicData VALUES(107, 'Meet', 'ME');
SELECT*FROM AcademicData

---Update the branch of Amit from CE to ME in Student_Details view.
UPDATE Student_Details
SET BRANCH='ME'
WHERE SNAME='AMIT'
SELECT*FROM Student_Details

---Delete a student whose roll number is 104 from AcademicData view
DELETE FROM AcademicData
WHERE RNO=104

SELECT*FROM AcademicData


-------------------------------------------------(PART-B)---------------------------------------------------------

---Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW information AS
SELECT *FROM STUDENT_INFO WHERE SPI>8.5
SELECT*FROM information

---Create a view that displays 0 backlog students.
CREATE VIEW TOPPER AS
SELECT *FROM STUDENT_INFO WHERE BKLOG=0
SELECT*FROM TOPPER

---Create a view Computerview that displays CE branch data only.
CREATE VIEW CVIEW AS
SELECT SNAME,BRANCH FROM STUDENT_INFO
WHERE BRANCH='CE'

SELECT*FROM CVIEW



--------------------------------------------------(PART-C)-------------------------------------------------------
---Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
CREATE VIEW Result_EC AS
SELECT SNAME,SPI FROM STUDENT_INFO
WHERE SPI<5 AND BRANCH='EC'

SELECT*FROM Result_EC
---Update the result of student MAHESH to 4.90 in Result_EC view.
UPDATE Result_EC
SET SPI=4.90
WHERE SNAME='MAHESH'

SELECT*FROM Result_EC
---Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
CREATE VIEW Stu_Bklog AS
SELECT RNO,SNAME,BKLOG FROM STUDENT_INFO
WHERE BKLOG LIKE 'M%' AND BKLOG>5
SELECT*FROM Stu_Bklog

---Drop Computerview form the database.
DROP VIEW CVIEW

SELECT*FROM CVIEW