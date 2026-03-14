CREATE DATABASE sql_class;
USE sql_class;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
city VARCHAR(50),
salary INT,
age INT
);

INSERT INTO employees VALUES
(1,'Ali Khan','IT','Delhi',42000,23),
(2,'Sara Ahmed','HR','Mumbai',38000,24),
(3,'Ahmed Raza','Finance','Pune',50000,29),
(4,'Zara Khan','Sales','Bangalore',46000,26),
(5,'Omar Farooq','Marketing','Hyderabad',55000,30),
(6,'Aisha Siddiqui','IT','Delhi',62000,31),
(7,'Bilal Hussain','HR','Mumbai',47000,28),
(8,'Hina Malik','Finance','Pune',52000,27),
(9,'Usman Ali','Sales','Bangalore',48000,25),
(10,'Fatima Noor','Marketing','Hyderabad',61000,32),

(11,'Imran Khan','IT','Delhi',43000,24),
(12,'Sana Ali','HR','Mumbai',39000,25),
(13,'Farhan Ahmed','Finance','Pune',51000,30),
(14,'Nida Khan','Sales','Bangalore',47000,26),
(15,'Hamza Raza','Marketing','Hyderabad',56000,31),
(16,'Maryam Ali','IT','Delhi',63000,33),
(17,'Saad Malik','HR','Mumbai',48000,27),
(18,'Zain Ahmed','Finance','Pune',54000,28),
(19,'Laiba Khan','Sales','Bangalore',49000,26),
(20,'Ibrahim Farooq','Marketing','Hyderabad',62000,34),

(21,'Arman Ali','IT','Delhi',44000,23),
(22,'Hassan Khan','HR','Mumbai',40000,24),
(23,'Areeba Noor','Finance','Pune',52000,29),
(24,'Shayan Ahmed','Sales','Bangalore',47000,25),
(25,'Mahnoor Ali','Marketing','Hyderabad',56000,30),
(26,'Rehan Malik','IT','Delhi',64000,32),
(27,'Sameer Khan','HR','Mumbai',49000,27),
(28,'Saba Noor','Finance','Pune',55000,28),
(29,'Arsalan Ahmed','Sales','Bangalore',50000,26),
(30,'Iqra Khan','Marketing','Hyderabad',63000,35);

SELECT * FROM sql_class.employees;

-- IT department ke employees dikhao

SELECT name,department FROM employees
WHERE department = "IT";


-- Salary > 60000 employees

SELECT name,salary FROM employees
WHERE salary >60000;


-- Delhi city employees

SELECT name, city FROM employees
WHERE citY = "Delhi";

-- Age < 30 employees

SELECT name,age FROM employees
WHERE age<30;

-- HR department with salary > 40000

SELECT department,salary
FROM employees
WHERE department = "HR" AND salary > 40000;

-- Salary descending order

SELECT * FROM employees 
ORDER BY salary DESC;

-- Top 10 highest salary employees

SELECT * FROM employees
ORDER BY salary desc
LIMIT 10;

-- Youngest 5 employees
SELECT * FROM employees
ORDER BY age asc
LIMIT 5;

-- Total employees count
SELECT COUNT(emp_id) AS total_emp
FROM employees;

-- Average salary
select avg(salary) AS avg_salary
FROM employees;

-- Maximum salary
SELECT name,salary
FROM EMPLOYEES
WHERE salary = (SELECT MAX(salary) AS max_salary
FROM employees);

-- Minimum salary

SELECT name,salary
FROM EMPLOYEES
WHERE salary = (SELECT MIN(salary) AS max_salary
FROM employees);

-- Total salary payout
SELECT SUM(salary) AS total_payout
FROM employees;

-- Department wise employee count
SELECT department,COUNT(emp_id) AS emp_number
FROM employees
GROUP BY department
ORDER BY emp_number;

-- City wise average salary
SELECT city,ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY city
ORDER BY avg_salary;

-- Department wise maximum salary
SELECT department,ROUND(MAX(salary),2) AS MAX_salary
FROM employees
GROUP BY department
ORDER BY max_salary;


-- Departments with avg salary > 45000
SELECT department,avg(SALARY) AS avg_salary_department
FROM employees
GROUP BY department
HAVING avg_salary_department>45000;

-- Cities having more than 5 employees
SELECT city,COUNT(emp_id) AS total_emo
FROM employees
GROUP BY city
HAVING total_emo>5;
