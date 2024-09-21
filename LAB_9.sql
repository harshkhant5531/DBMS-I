SELECT*FROM STUDENT_DATA
SELECT*FROM ACADEMIC
SELECT*FROM DEPARTMENT

----------------------------------------------------------------(PART-A)-------------------------------------------------------------------------------
---Display details of students who are from computer department.
SELECT* FROM STUDENT_DATA 
WHERE DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER')

---Displays name of students whose SPI is more than 8.
SELECT NAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC WHERE SPI>8)

---Display details of students of computer department who belongs to Rajkot city.
SELECT* FROM STUDENT_DATA
WHERE DID=(SELECT DID FROM DEPARTMENT WHERE  DNAME='COMPUTER' AND CITY='RAJKOT')

---Find total number of students of electrical department.
SELECT COUNT(*) AS COUNT_ELE FROM STUDENT_DATA
WHERE DID =(SELECT DID FROM DEPARTMENT WHERE DNAME='ELECTRICAL')

---Display name of student who is having maximum SPI.
SELECT STUDENT_DATA.NAME FROM STUDENT_DATA
INNER JOIN ACADEMIC ON STUDENT_DATA.NO=ACADEMIC.RNO
WHERE ACADEMIC.SPI=(SELECT MAX(ACADEMIC.SPI) FROM ACADEMIC)

---Display details of students having more than 1 backlog.
SELECT*FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC WHERE Bklog>1)


------------------------------------------------------------(PART-B)------------------------------------------------------------------------------
---Display name of students who are either from computer department or from mechanical department.
SELECT NAME FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME IN ('COMPUTER','MECHANICAL'))

---Display name of students who are in same department as 102 studying in.
SELECT NAME FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM STUDENT_DATA WHERE NO = 102);

-----------------------------------------------------------(PART-C)-------------------------------------------------------------------------------

---Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT NAME
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DNAME = 'ELECTRICAL'
)
AND 
	NO IN (
    SELECT RNO
    FROM ACADEMIC
    WHERE SPI > 9
);

---Display name of student who is having second highest SPI.
SELECT STUDENT_DATA.NAME FROM STUDENT_DATA
INNER JOIN ACADEMIC ON STUDENT_DATA.NO=ACADEMIC.RNO
WHERE ACADEMIC.SPI=(SELECT MAX(ACADEMIC.SPI) FROM ACADEMIC WHERE ACADEMIC.SPI<(SELECT MAX(ACADEMIC.SPI) FROM ACADEMIC))


---Display city names whose students branch wise SPI is 9.2

SELECT DISTINCT CITY FROM STUDENT_DATA
WHERE NO=(SELECT RNO FROM ACADEMIC WHERE SPI=9.2)



-----------------------------------------------------------[SET OPERATOR]-----------------------------------------------------------------------
--------------------------------------------------------------(PART-A)--------------------------------------------------------------------------

SELECT*FROM COMPUTER
SELECT*FROM ELECTRICAL


---Display name of students who is either in Computer or in Electrical.
SELECT NAME FROM  COMPUTER
UNION
SELECT NAME FROM ELECTRICAL

---Display name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM  COMPUTER
UNION ALL
SELECT NAME FROM ELECTRICAL

---Display name of students who is in both Computer and Electrical.
SELECT NAME FROM  COMPUTER
INTERSECT
SELECT NAME FROM ELECTRICAL

---Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM  COMPUTER
EXCEPT
SELECT NAME FROM ELECTRICAL

---Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM  ELECTRICAL
EXCEPT
SELECT NAME FROM COMPUTER

---Display all the details of students who are either in Computer or in Electrical.
SELECT*FROM COMPUTER
UNION
SELECT*FROM ELECTRICAL

---Display all the details of students who are in both Computer and Electrical.SELECT*FROM COMPUTERINTERSECTSELECT*FROM ELECTRICAL

---------------------------------------------------------------(PART-B)--------------------------------------------------------------------------

SELECT*FROM EMP_DATA
SELECT*FROM CUSTOMER

---Display name of persons who is either Employee or Customer.
SELECT NAME FROM EMP_DATA
UNION
SELECT NAME FROM CUSTOMER

---Display name of persons who is either Employee or Customer including duplicate data.
SELECT NAME FROM EMP_DATA
UNION ALL
SELECT NAME FROM CUSTOMER

---Display name of persons who is both Employee as well as Customer.
SELECT NAME FROM EMP_DATA
INTERSECT
SELECT NAME FROM CUSTOMER

---Display name of persons who are Employee but not Customer.
SELECT NAME FROM EMP_DATA
EXCEPT
SELECT NAME FROM CUSTOMER

---Display name of persons who are Customer but not Employee.
SELECT NAME FROM CUSTOMER
EXCEPT
SELECT NAME FROM EMP_DATA



---------------------------------------------------------------(PART-C)--------------------------------------------------------------------------



SELECT*FROM EMP_DATA
SELECT*FROM CUSTOMER

---Display name of persons who is either Employee or Customer.
SELECT * FROM EMP_DATA
UNION
SELECT * FROM CUSTOMER

---Display name of persons who is either Employee or Customer including duplicate data.
SELECT * FROM EMP_DATA
UNION ALL
SELECT * FROM CUSTOMER

---Display name of persons who is both Employee as well as Customer.
SELECT * FROM EMP_DATA
INTERSECT
SELECT * FROM CUSTOMER

---Display name of persons who are Employee but not Customer.
SELECT * FROM EMP_DATA
EXCEPT
SELECT * FROM CUSTOMER

---Display name of persons who are Customer but not Employee.
SELECT * FROM CUSTOMER
EXCEPT
SELECT * FROM EMP_DATA



