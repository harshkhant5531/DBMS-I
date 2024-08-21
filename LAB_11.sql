

-------------------------TB-1--->

CREATE TABLE STU_INFO
(	
	RNO INT,
	SNAME VARCHAR(15),
	BRANCH VARCHAR(5)
)

INSERT INTO STU_INFO (RNO , SNAME , BRANCH)
VALUES	(101 ,'Raju' ,'CE'),
		(102 ,'Amit' ,'CE'),
		(103 ,'Sanjay' ,'ME'),
		(104 ,'Neha' ,'EC'),
		(105 ,'Meera' ,'EE'),
		(106 ,'Mahesh', 'ME')

SELECT*FROM STU_INFO

-------------------------TB-2--->

CREATE TABLE RESULT
(	
	RNO INT,
	SPI DECIMAL(2,1)
)

INSERT INTO RESULT(RNO , SPI)
VALUES	(101, 8.8),
		(102 ,9.2),
		(103 ,7.6),
		(104, 8.2),
		(105 ,7.0),
		(107 ,8.9)

SELECT*FROM RESULT

-------------------------TB-3--->

CREATE TABLE EMPLOYEE_MASTER
(	
	EMPLOYEENO VARCHAR(5),
	ENAME VARCHAR(10),
	MANAGERNO VARCHAR(5)
)

INSERT INTO EMPLOYEE_MASTER(EMPLOYEENO , ENAME , MANAGERNO)
VALUES	('E01' ,'Tarun' ,NULL),
		('E02', 'Rohan', 'E02'),
		(' E03' ,'Priya' ,'E01'),
		('E04', 'Milan' ,'E03'),
		('E05', 'Jay' ,'E01'),
		('E06' ,'Anjana', 'E04')

SELECT*FROM EMPLOYEE_MASTER


---------------------------------------------------------------(PART-A)----------------------------------------------------------------------------------

---Combine information from student and result table using cross join or Cartesian product.
SELECT*FROM STU_INFO 
CROSS JOIN
RESULT

---Perform inner join on Student and Result tables.
SELECT*FROM STU_INFO
INNER JOIN
RESULT 
ON STU_INFO.RNO=RESULT.RNO

---Perform the left outer join on Student and Result tables.
SELECT*FROM STU_INFO
LEFT OUTER JOIN
RESULT
ON STU_INFO.RNO=RESULT.RNO

---Perform the right outer join on Student and Result tables.
SELECT*FROM STU_INFO
RIGHT OUTER JOIN
RESULT
ON STU_INFO.RNO=RESULT.RNO

---Perform the full outer join on Student and Result tables.
SELECT*FROM STU_INFO
FULL OUTER JOIN
RESULT
ON STU_INFO.RNO=RESULT.RNO

---Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO,STU_INFO.SNAME,STU_INFO.BRANCH,RESULT.SPI 
FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO=RESULT.RNO

---Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.SNAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO=RESULT.RNO
WHERE STU_INFO.BRANCH='CE'

---Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.SNAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO=RESULT.RNO
WHERE STU_INFO.BRANCH <> 'EC'

---Display average result of each branch.
SELECT STU_INFO.BRANCH,AVG(RESULT.SPI) AS SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO=RESULT.RNO
GROUP BY STU_INFO.BRANCH

---Display average result of CE and ME branch.
SELECT STU_INFO.BRANCH,AVG(RESULT.SPI) AS SPI
FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO=RESULT.RNO
WHERE STU_INFO.BRANCH='CE' AND STU_INFO.BRANCH='ME'
GROUP BY STU_INFO.BRANCH


---------------------------------------------------------------(PART-B)----------------------------------------------------------------------------------

---Display average result of each branch and sort them in ascending order by SPI.
SELECT STU_INFO.BRANCH,AVG(RESULT.SPI) AS AVERAGE_RESULT
FROM STU_INFO 
INNER JOIN 
RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY AVG(RESULT.SPI)

---Display highest SPI from each branch and sort them in descending order
SELECT STU_INFO.BRANCH,MAX(RESULT.SPI) AS AVERAGE_RESULT
FROM STU_INFO 
INNER JOIN 
RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY STU_INFO.BRANCH
ORDER BY MAX(RESULT.SPI) DESC


---------------------------------------------------------------(PART-C)----------------------------------------------------------------------------------

---Retrieve the names of employee along with their manager’s name from the Employee table.

SELECT E1.ENAME AS EmployeeName, E2.MANAGERNO AS ManagerName
FROM EMPLOYEE_MASTER E1
LEFT JOIN EMPLOYEE_MASTER E2
ON E1.ENAME = E2.MANAGERNO;
