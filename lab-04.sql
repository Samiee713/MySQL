CREATE DATABASE bankdb;
USE bankdb;

CREATE TABLE depositor(cusname VARCHAR(50),accno INT );

CREATE TABLE borrower(cusname VARCHAR(50), loanno INT);

CREATE TABLE loan(loanno INT, amount INT, branchname VARCHAR(50));

-- Insert into depositor
INSERT INTO depositor VALUES 
('John', 101),
('Alice', 102),
('Bob', 103),
('John', 104),
('Emily', 105),
('John', 106);

-- Insert into borrower
INSERT INTO borrower VALUES 
('John', 201),
('Alice', 202),
('Derek', 203),
('John', 204),
('John', 205);

-- Insert into loan
INSERT INTO loan VALUES 
(201, 3000, 'Pokhara'),
(202, 2000, 'Pokhara'),
(203, 3000, 'Kathmandu'),
(204, 1000, 'Pokhara'),
(205, 3000, 'Biratnagar');


SELECT * FROM depositor;

--1. Write a query to find all customers who either have an account or a loan

SELECT cusname FROM depositor
UNION
SELECT cusname FROM borrower;

--2. Use UNION ALL to display all customers and include duplicates if any

SELECT cusname FROM depositor
UNION ALL
SELECT cusname FROM borrower

--3: (INTERSECT) Write a query to find customers who have both a loan and an account. 

SELECT cusname FROM depositor
INTERSECT
SELECT cusname FROM borrower;

--4.  Use INTERSECT ALL to include repeated names based on number of common entries.

SELECT cusname FROM depositor
INTERSECT ALL
SELECT cusname FROM borrower;

--5. Find customers who have an account but no loan using EXCEPT.COMMENT

SELECT cusname FROM depositor
EXCEPT
SELECT cusname FROM borrower;

--6. Use EXCEPT ALL to reflect duplicates properly for customers with more accounts than loans.COMMENT

SELECT cusname FROM depositor
EXCEPT ALL
SELECT cusname FROM borrower;

--7. Retrieve customers from the borrower table at branch ‘Pokhara’, sorted alphabetically using ORDER BY.

SELECT DISTINCT b.cusname
FROM borrower b
JOIN loan l ON b.loanno = l.loanno
WHERE l.branchname = 'Pokhara'
ORDER BY b.cusname ASC;

--8. List all loans, sorted by amount in descending order. If amounts are same, sort by loan number in ascending order.

SELECT * FROM loan
ORDER BY amount DESC, loanno ASC;














