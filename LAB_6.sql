---------------------------------------MATH FUNCTION-----------------------------------------

---------------------------------------(PART-A)----------------------------------------------

---Display the result of 5 multiply by 30.
SELECT 5*30 AS ANSWER

---Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

---Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

---Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

---. Find out remainder of 5 divided 2 and 5 divided by 3
SELECT 5%2 AS RESUILT1,5%3  AS RESULT2 

---. Find out value of 3 raised to 2nd power and 4 raised 3rd power
SELECT POWER(3,2),POWER (4,3)

---Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50)

---. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25)

---Find out the value of PI
SELECT PI()

---Find out round value of 157.732 for 2, 0 and -2 decimal points
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)

---Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

---. Find out logarithm having base e of 10 and 2
SELECT  LOG10(2)

---. Find out logarithm having base b having value 10 of 5 and 100
SELECT LOG10(5),LOG10(100)

---. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

---. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(0),SIGN(25)

---Generate random number using function.
SELECT RAND()

--------------------------------------------(PART-B)------------------------------------------------------
CREATE TABLE  EMP_MASTER(
EMPNO INT,
EMPNAME VARCHAR(50),
JOININGDATE DATETIME,
SALARY DECIMAL(8,2),
COMMISION INT,
CITY VARCHAR(50),
DEPTCODE VARCHAR(50)
);
 INSERT INTO EMP_MASTER VALUES(101,'Keyur','2002-1-5',12000,4500,'Rajkot','3@g');
 INSERT INTO EMP_MASTER VALUES(102,'Hardik','2004-2-15',14000,2500,'Ahmedabad','3@');
 INSERT INTO EMP_MASTER VALUES(103,'Kajal','2006-3-14',15000,3000,'Baroda','3-GD');
 INSERT INTO EMP_MASTER VALUES(104,'Bhoomi','2005-6-23',12500,1000,'Ahmedabad','1A3D');
 INSERT INTO EMP_MASTER VALUES(105,'Harmit','2004-2-15',14000,2000,'Rajkot','312A');

 SELECT*FROM EMP_MASTER

---Display the result of Salary plus Commission.
SELECT EMPNAME,SALARY+COMMISION AS UP_DATA FROM EMP_MASTER

---Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

---Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

---Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55%2 AS RESUILT1,55%3  AS RESULT2 

---Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2) AS UP_DATA1 ,POWER (14,3) AS UP_DATA1



---------------------------------------------------------(PART-C)------------------------------------------------------
---Find out the square root of 36, 49 and 81.
SELECT SQRT(36),SQRT(49),SQRT(81)

---Find out the square of 3, 9, and 12.
SELECT SQUARE(3),SQUARE(9),SQUARE(12)

---Find out round value of 280.8952 for 2, 0 and -2 decimal points.
----(153.275,-2) AFTER POINT INDEX START WITH 0 AND BEFORE POINT INDEX START WITH -1 AND AFTER THE INDEX ALL VALUES ARE CONVERT INTO 0
SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2),ROUND(153.273,-2)

---Find sine, cosine and tangent of 4.2014. 
SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

---Find sign of -55, 0 and 95.
SELECT SIGN(-55),SIGN(0),SIGN(95)




------------------------------------------------STRING FUNCTION--------------------------------------------------------------

----------------------------------------------------PART-A-------------------------------------------------------------------

---Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('')

---Display your name in lower & upper case.
SELECT LOWER('HARSH'),UPPER('harsh')

---Display first three characters of your name.
SELECT SUBSTRING('HARSH',1,3)

---Display 3rd to 10th character of your name.
SELECT SUBSTRING('DARSHAN UNIVERSITY',3,10)

---Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg',123,'XYZ'),REPLACE('abcabcabc','C',5)

---Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

---Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

---Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('     HELLO WORLD');

---Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD       ');

---Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL Server',4) AS LEFT_ST,RIGHT('SQL Server',5) AS RIGHT_ST;

---Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST('1234.56' AS DECIMAL(6,4));

---Write a query to convert a float 10.58 to integer (Use cast and convert function).
--->CONVERT
SELECT CONVERT(INT,10.58);
---->CAST
SELECT CAST(10.58 AS INT);

--Put 10 space before your name using function.
SELECT SPACE(10) +'HARSH';

---Combine two strings using + sign as well as CONCAT ().
---->CONCAT
SELECT CONCAT('HASRH','KHANT');
---->USING +
SELECT 'HARSH'+'KHANT';

---Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN');

---Repeat your name 3 times.
SELECT REPLICATE('HASRH',3);


----------------------------------------------------(PAT-B)--------------------------------------------------------------
---Find the length of FirstName and LastName columns.
SELECT LEN(FirstName),LEN(LastName) FROM STUDENT;

---Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FirstName),UPPER(LastName) FROM STUDENT;

---Display first three characters of FirstName column.
SELECT SUBSTRING(FirstName,0,4) AS SUB_ST FROM STUDENT;

---Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE,3,11) AS SUB_ST FROM STUDENT;

---Write a query to display first 4 & Last 5 characters of Website column.
SELECT LEFT(WEBSITE,4),RIGHT(WEBSITE,5) FROM STUDENT;

----------------------------------------------------------(PART-C)-----------------------------------------------------------
---Put 10 space before FirstName using function.
SELECT SPACE(10)+FIRSTNAME FROM STUDENT;

---Combine FirstName and LastName columns using + sign as well as CONCAT ().
----->+SIGN
SELECT FIRSTNAME+LASTNAME FROM STUDENT;

---Combine all columns using + sign as well as CONCAT ().
SELECT FIRSTNAME+LASTNAME+WEBSITE+CITY+ADDRESS FROM STUDENT;

---Find reverse of FirstName column.
SELECT REVERSE(FIRSTNAME) FROM STUDENT;

---Repeat FirstName column 3 times
SELECT REPLICATE(FIRSTNAME,3) FROM STUDENT;

---Give the Names which contains 5 characters.
SELECT FIRSTNAME FROM STUDENT WHERE FirstName LIKE '_____';

---Combine the result as <FirstName> Lives in <City>.
SELECT CONCAT(FIRSTNAME,'  ',CITY) FROM STUDENT;

---Combine the result as Student_ID of < FirstName > is <StuID> .
SELECT CONCAT(STUID,'  ',FIRSTNAME) FROM STUDENT AS STUDENT_ID;

-------------------------------------------------(DATE FUNCTION)----------------------------------------------------------
----------------------------------------------------PART-A----------------------------------------------------------------

---Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE();

---Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY,365,GETDATE());

---Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR,GETDATE());

---Display the current date in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR,GETDATE(),106);

---Display the current date in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR,GETDATE(),7);

---Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'31-Dec-08','31-Mar-09');

---Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR,'25-Jan-12','14-Sep-10');

---Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'25-Jan-12 7:00 ','26-Jan-12 10:30');

---Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('12-May-16'),MONTH('12-May-16'),YEAR('12-May-16');

---Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE());

---Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE());

---Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE());
SELECT DATEPART(MONTH,GETDATE());

---Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE());

---Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'21-MARCH-2005',GETDATE());
SELECT DATEDIFF(MONTH,'21-MARCH-2005',GETDATE());


-------------------------------------------(PART-B)-----------------------------------------------------------
CREATE TABLE EMP_DETAIL(
EMPNO INT,
EMPNAME VARCHAR(50),
JOININGDATE DATETIME,
SALARY DECIMAL(7,2),
CITY VARCHAR(50)
);

INSERT INTO EMP_DETAIL VALUES (101,'KEYUR','2002-1-15',12000,'Rajkot');
INSERT INTO EMP_DETAIL VALUES (102,'HARDIK','2004-2-15',14000,'Ahmedabad');
INSERT INTO EMP_DETAIL VALUES (103,'KAJAL','2006-3-15',15000,'Baroda');
INSERT INTO EMP_DETAIL VALUES (104,'BHOOMI','2005-6-15',12500,'Ahmedabad');
INSERT INTO EMP_DETAIL VALUES (105,'HARMIT','2004-2-15',14000,'Rajkot');
INSERT INTO EMP_DETAIL VALUES (106,'JAY','2007-3-15',12000,'Surat');


SELECT*FROM EMP_DETAIL;



---Write a query to find new date after 365 day with reference to JoiningDate.
SELECT DATEADD(DAY,365,JOININGDATE) FROM EMP_DETAIL;

---Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR,JOININGDATE) FROM EMP_DETAIL;

---Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR,JOININGDATE,106) FROM EMP_DETAIL;

---Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR,JOININGDATE,7) FROM EMP_DETAIL;

---Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT DATEDIFF(MONTH,JOININGDATE,'31-MAR-2009') FROM EMP_DETAIL;

---Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT DATEDIFF(MONTH,JOININGDATE,'14-Sep-10') FROM EMP_DETAIL;


-------------------------------------------(PART-C)-----------------------------------------------------------
---Write a query to extract Day, Month, Year from JoiningDate.
SELECT DAY(JOININGDATE) FROM EMP_DETAIL;
SELECT MONTH(JOININGDATE) FROM EMP_DETAIL;
SELECT YEAR(JOININGDATE) FROM EMP_DETAIL;

---Write a query that adds 5 years to JoiningDate.
SELECT DATEADD(YEAR,5,JOININGDATE) FROM EMP_DETAIL ;

---Write a query to subtract 2 months from JoiningDate.
SELECT DATEADD(MONTH,-2,JOININGDATE) FROM EMP_DETAIL ;

---Extract month from JoiningDate using datename () and datepart () function.
SELECT DATENAME(MONTH,JOININGDATE) FROM EMP_DETAIL;
SELECT DATEPART(MONTH,JOININGDATE) FROM EMP_DETAIL;

---Calculate your age in years and months
SELECT DATEDIFF(YEAR,'14-JUN-06',GETDATE()) AS YEAR;
SELECT DATEDIFF(MONTH,'14-JUN-06',GETDATE()) AS MONTH;




