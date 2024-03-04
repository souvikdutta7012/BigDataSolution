-- create [Q.101]

create table useractivity(
username varchar(30),
activity varchar(30),
startdate date,
enddate date);

-- insert inton useractivity
insert into useractivity values('Alice', 'Travel', '2020-02-12', '2020-02-20');
insert into useractivity values('Alice', 'Dancing', '2020-02-21', '2020-02-23');
insert into useractivity values('Alice', 'Travel', '2020-02-24', '2020-02-28');
insert into useractivity values('Bob', 'Travel', '2020-02-11', '2020-02-18');
-- Q101.Write an SQL query to show the second most recent activity of each user.
-- If the user only has one activity, return that one. A user cannot perform more than one activity at the
-- same time. Return the result table in any order

select * from useractivity;

with cte as(
select *,rank() over(partition by username order by enddate desc) as rn,
lead(enddate) over(partition by username order by enddate desc) as next_activity
from useractivity
)
select username,activity,startdate,enddate
from cte
where (rn=2 and next_activity is not null) or (rn=1 and next_activity is null);

-- create [Q.102] [Repeated same as Q.101]

-- create [Q.103]

create table student(
id int,
name varchar(30),
marks int);

-- insert into student

insert into student values(1,'Ashley',81);
insert into student values(2,'Samantha',75);
insert into student values(4,'Julia',76);
insert into student values(3,'Belvet',84);

select * from student;

-- Q103.Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by
-- the last three characters of each name. If two or more students both have names ending in the same
-- last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

select name from student
where marks>75 
order by substring(name,-3,3) ,id;

-- create [Q.104]

create table employee(
employee_Id int,
name varchar(30),
months int,
salary int);
insert into employee values(12228,'Rose',15,1968);
insert into employee values(33645,'Angela',1,3443);
insert into employee values(45692,'Frank',17,1608);
insert into employee values(56118,'Patrick',7,1345);
insert into employee values(59725,'Lisa',11,2330);
insert into employee values(74197,'Kimberly',16,4372);
insert into employee values(78454,'Bonnie',8,1771);
insert into employee values(83565,'Michael',6,2017);
insert into employee values(98607,'Todd',5,3396);
insert into employee values(99989,'Joe',9,3573);

select * from employee;

-- Q104.Write a query that prints a list of employee names (i.e.: the name attribute) for employees in
-- Employee having a salary greater than $2000 per month who have been employees for less than 10
-- months. Sort your result by ascending employee_id

select name from employee
where salary > 2000 and months <10
order by employee_id;

-- create [Q.105]

create table triangle(
a int,
b int,
c int);

-- insert into triangle
insert into triangle values(20,20,23);
insert into triangle values(20,20,20);
insert into triangle values(20,21,22);
insert into triangle values(13,14,30);

-- Q105.Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:
-- ● Equilateral: It's a triangle with sides of equal length.
-- ● Isosceles: It's a triangle with sides of equal length.
-- ● Scalene: It's a triangle with sides of differing lengths.
-- ● Not A Triangle: The given values of A, B, and C don't form a triangle

select * from triangle;

SELECT
CASE
WHEN A = B AND A = C AND B = C THEN 'Equilateral'
WHEN (A = B OR A = C OR B = C) AND (A+B>C ) AND(B+C>A) AND(C+A)>B THEN 'Isosceles'
WHEN A != B AND B != C AND (A+B>C ) AND(B+C>A) AND(C+A)>B THEN 'Scalene'
ELSE 'Not A Triangle'
END as types_of_triangle
FROM TRIANGLE;

-- create [Q.106]

create table employees(
id int,
name varchar(30),
salary int);

-- insert into employees
insert into employees values(1,'Kristeen',1420);
insert into employees values(2,'Ashley',2006);
insert into employees values(3,'Julia',2210);
insert into employees values(4,'Maria',3000);


-- Q106.Samantha was tasked with calculating the average monthly salaries for all employees in the
-- EMPLOYEES table, but did not realise her keyboard's 0 key was broken until after completing the
-- calculation. She wants your help finding the difference between her miscalculation (using salaries
-- with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries),and round it up to the next integer

select  ceil(avg(salary)-avg(replace(salary,'0',''))) as avg_salary from employees;

-- create [Q.107]

create table employee(
employee_id int,
name varchar(30),
months int,
salary int);

-- insert into employee
insert into employee values(12228,'Rose',15,1968);
insert into employee values(33645,'Angela',1,3443);
insert into employee values(45692,'Frank',17,1608);
insert into employee values(56118,'Patrick',7,1345);
insert into employee values(59725,'Lisa',11,2330);
insert into employee values(74197,'Kimberly',16,4372);
insert into employee values(78454,'Bonnie',8,1771);
insert into employee values(83565,'Michael',6,2017);
insert into employee values(98607,'Todd',5,3396);
insert into employee values(99989,'Joe',9,3573);
-- Q.107 Write a query to find the maximum total earnings for all employees as well as the total number of
-- employees who have maximum total earnings. Then print these values as 2 space-separated integers.

select sum(salary*months) as earning,count(*) as no_of_employee
from employee where salary*months=(select max(salary*months) from employee)
group by employee_id;

-- create [Q.108]

create table occupations(
name varchar(30),
occupation varchar(30));

-- insert into occupations
insert into occupations values('Samantha','Doctor');
insert into occupations values('Julia','Actor');
insert into occupations values('Maria','Actor');
insert into occupations values('Meera','Singer');
insert into occupations values('Ashely','Professor');
insert into occupations values('Ketty','Professor');
insert into occupations values('Christeen','Professor');
insert into occupations values('Jane','Actor');
insert into occupations values('Jenny','Doctor');
insert into occupations values('Priya','Singer');

-- 108.(1). Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by
-- the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For
-- example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of occurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order

-- 1st Query output
select concat(name,'(',substr(occupation,1,1),')') as name
from occupations;

-- 2nd Query Output
with cte as(
select occupation,count(*) as occ_count
from occupations group by occupation)

select concat('There are a total of ',occ_count,' ',occupation,'s') as statement
from cte
order by occ_count;

-- create [Q.109]

create table occupations(
name varchar(30),
occupation varchar(30));

-- insert into occupations

insert into occupations values('Samantha','Doctor');
insert into occupations values('Julia','Actor');
insert into occupations values('Maria','Actor');
insert into occupations values('Meera','Singer');
insert into occupations values('Ashely','Professor');
insert into occupations values('Ketty','Professor');
insert into occupations values('Christeen','Professor');
insert into occupations values('Jane','Actor');
insert into occupations values('Jenny','Doctor');
insert into occupations values('Priya','Singer');

-- Q109 . Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and
-- displayed underneath its corresponding Occupation. The output column headers should be Doctor,
-- Professor, Singer, and Actor, respectively.
-- Note: Print NULL when there are no more names corresponding to an occupation.
select Doctor,Professor,Singer,Actor from(
select rn,
max(case when occupation = 'Doctor' then name end) Doctor,
max(case when occupation = 'Professor'  then name end) Professor,
max(case when occupation = 'Singer' then name end) Singer,
max(case when occupation = 'Actor'  then name end) Actor
from (
select o.*, row_number() over(partition by occupation order by name) rn from occupations o
)a
group by rn)b;

-- create [Q.110]

create table bst(
n int,
p int);

-- insert into bst
insert into bst values(1,2);
insert into bst values(3,2);
insert into bst values(6,8);
insert into bst values(9,8);
insert into bst values(2,5);
insert into bst values(8,5);
insert into bst values(5,null);

-- Q110.Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the
-- following for each node:
-- ● Root: If node is root node.
-- ● Leaf: If node is leaf node.
-- ● Inner: If node is neither root nor leaf node.

select n,
case when p is null then 'root'
when n not in(select distinct p from bst where p is not null) then 'leaf'
else 'inner' end as type
from bst
order by n;

-- create [Q.111]

create table company(
company_code varchar(30),
founder varchar(30));


create table lead_manager(
lead_manager_code varchar(30),
company_code varchar(30));

create table senior_manager(
senior_manager_code varchar(30),
lead_manager_code varchar(30),
company_code varchar(30));

create table manager(
manager_code varchar(30),
senior_manager_code varchar(30),
lead_manager_code varchar(30),
company_code varchar(30));

create table employee(
employee_code varchar(30),
manager_code varchar(30),
senior_manager_code varchar(30),
lead_manager_code varchar(30),
company_code varchar(30));

-- insert into company
insert into company values('C1','Monika');
insert into company values('C2','Samantha');

-- insert into lead_manager
insert into lead_manager values('LM1','C1');
insert into lead_manager values('LM2','C2');

-- insert into senior_manager
insert into senior_manager values('SM1','LM1','C1');
insert into senior_manager values('SM2','LM1','C1');
insert into senior_manager values('SM3','LM2','C2');

-- insert into manager
insert into manager values('M1','SM1','LM1','C1');
insert into manager values('M2','SM3','LM2','C2');
insert into manager values('M3','SM3','LM2','C2');
 -- insert into employee
insert into employee values('E1','M1','SM1','LM1','C1');
insert into employee values('E2','M1','SM1','LM1','C1');
insert into employee values('E3','M2','SM3','LM2','C2');
insert into employee values('E4','M3','SM3','LM2','C2');


-- Q111.Given the table schemas below, write a query to print the company_code, founder name, total number
-- of lead managers, total number of senior managers, total number of managers, and total number of
-- employees. Order your output by ascending company_code.

SELECT C.COMPANY_CODE,
       C.FOUNDER,
  (SELECT COUNT(DISTINCT LEAD_MANAGER_CODE) 
   FROM LEAD_MANAGER L
   WHERE L.COMPANY_CODE = C.COMPANY_CODE) as lead_manager_count,
  (SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE)
   FROM SENIOR_MANAGER S
   WHERE S.COMPANY_CODE = C.COMPANY_CODE) as senior_manager_count,
  (SELECT COUNT(DISTINCT MANAGER_CODE)
   FROM MANAGER M
   WHERE M.COMPANY_CODE = C.COMPANY_CODE) as manager_count,
  (SELECT COUNT(DISTINCT EMPLOYEE_CODE) 
   FROM EMPLOYEE E
   WHERE E.COMPANY_CODE = C.COMPANY_CODE)as employee_count
FROM COMPANY C
ORDER BY C.COMPANY_CODE ASC;

-- create [Q.112]

-- Q112. Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line,
-- and use the ampersand () character as your separator (instead of a space).
-- For example, the output for all prime numbers <=10 would be: 2&3&5&7

SET @range = 1000;

SELECT GROUP_CONCAT(R2.n SEPARATOR '&') as prime_number
FROM (
SELECT @ctr2:=@ctr2+1 "n"
FROM information_schema.tables R2IS1,
information_schema.tables R2IS2,
(SELECT @ctr2:=1) TI WHERE @ctr2<@range) R2
WHERE NOT EXISTS (
SELECT R1.n FROM (
SELECT @ctr1:=@ctr1+1 "n"
FROM information_schema.tables R1IS1,
information_schema.tables R1IS2,
(SELECT @ctr1:=1) I1 WHERE @ctr1<@range) R1 WHERE R2.n%R1.n=0 AND R2.n>R1.n);

-- create [Q.113]
-- Q113.Write a query to print the pattern P(20)
set @row := 0;
select repeat('* ', @row := @row + 1)as pattern from information_schema.tables where @row < 5;

-- create [Q.114]
-- Q114.Write a query to print the pattern P(20)
with recursive num(n) as
(
select 10
    union all
    select n - 2
    from num 
    where n - 2 >= 2
)
select lpad('', num.n, '* ') as pattern
from num; 

-- create [Q.115]

create table student(
id int,
name varchar(30),
marks int);

-- insert into student
insert into student values(1,'Ashley',81);
insert into student values(2,'Samantha',75);
insert into student values(4,'Julia',76);
insert into student values(3,'Belvet',84);
select * from student;

-- Q115.Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by
-- the last three characters of each name. If two or more students both have names ending in the same
-- last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

select name from student
where marks>75 
order by substring(name,-3,3) ,id;

-- create [Q.116 (a)]


create table functions(
x int ,
y int);

-- insert into functions

insert into functions values(20,20);
insert into functions values(20,20);
insert into functions values(20,21);
insert into functions values(23,22);
insert into functions values(22,23);
insert into functions values(21,20);

select * from functions;

-- Q116.Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
-- Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
select distinct x1,y1 from(
select f1.x as x1,f1.y as y1,f2.x as x2,f2.y as y2
from functions f1 inner join functions f2
on f1.x=f2.y and f1.y=f2.x)a
where x1<=y1
order by x1;

-- create [Q.116 (b)]

create table employee(
employee_Id int,
name varchar(30),
months int,
salary int);

-- insert into employee

insert into employee values(12228,'Rose',15,1968);
insert into employee values(33645,'Angela',1,3443);
insert into employee values(45692,'Frank',17,1608);
insert into employee values(56118,'Patrick',7,1345);
insert into employee values(59725,'Lisa',11,2330);
insert into employee values(74197,'Kimberly',16,4372);
insert into employee values(78454,'Bonnie',8,1771);
insert into employee values(83565,'Michael',6,2017);
insert into employee values(98607,'Todd',5,3396);
insert into employee values(99989,'Joe',9,3573);

select * from employee;

-- Q116.2.Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in
-- alphabetical order.

select name from employee order by name;

-- create [Q.117]

create table employee(
employee_Id int,
name varchar(30),
months int,
salary int);

-- insert into employee

insert into employee values(12228,'Rose',15,1968);
insert into employee values(33645,'Angela',1,3443);
insert into employee values(45692,'Frank',17,1608);
insert into employee values(56118,'Patrick',7,1345);
insert into employee values(59725,'Lisa',11,2330);
insert into employee values(74197,'Kimberly',16,4372);
insert into employee values(78454,'Bonnie',8,1771);
insert into employee values(83565,'Michael',6,2017);
insert into employee values(98607,'Todd',5,3396);
insert into employee values(99989,'Joe',9,3573);

-- Q117.Write a query that prints a list of employee names (i.e.: the name attribute) for employees in
-- Employee having a salary greater than $2000 per month who have been employees for less than 10
-- months. Sort your result by ascending employee_id

select name from employee
where salary > 2000 and months <10
order by employee_id;

-- create [Q.118]

create table triangle(
a int,
b int,
c int);
-- insert into triangle

insert into triangle values(20,20,23);
insert into triangle values(20,20,20);
insert into triangle values(20,21,22);
insert into triangle values(13,14,30);

-- Q118.Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:
-- ● Equilateral: It's a triangle with sides of equal length.
-- ● Isosceles: It's a triangle with sides of equal length.
-- ● Scalene: It's a triangle with sides of differing lengths.
-- ● Not A Triangle: The given values of A, B, and C don't form a triangle

select * from triangle;

SELECT
CASE
WHEN A = B AND A = C AND B = C THEN 'Equilateral'
WHEN (A = B OR A = C OR B = C) AND (A+B>C ) AND(B+C>A) AND(C+A)>B THEN 'Isosceles'
WHEN A != B AND B != C AND (A+B>C ) AND(B+C>A) AND(C+A)>B THEN 'Scalene'
ELSE 'Not A Triangle'
END as types_of_triangle
FROM TRIANGLE;

-- create [Q.119]

create table user_transaction(
transaction_id int,
product_id int,
spend float,
transaction_date datetime);

-- Q119.Assume you are given the table below containing information on user transactions for particular
-- products. Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.
-- Output the year (in ascending order) partitioned by product id, current year's spend, previous year's
-- spend and year-on-year growth rate (percentage rounded to 2 decimal places).
-- insert into user_transaction
insert into user_transaction values(1341, 123424, 1500.60, str_to_date('12312019120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1423, 123424, 1000.20, str_to_date('12312020120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1623, 123424, 1246.44, str_to_date('12312021120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1322, 123424, 2145.32, str_to_date('12312022120000','%m%d%Y%h%i%s'));

select * from user_transaction;


with cte as(
select extract(year from transaction_date) as year,product_id,spend as curr_year_spend,
round(lag(spend) over(PARTITION BY product_id order by extract(year from transaction_date)),2)
as prev_year_spend
from user_transaction)
select * ,
case when prev_year_spend is not null then round(((curr_year_spend-prev_year_spend)/prev_year_spend*100),2)
else prev_year_spend end as yoy_rate
from cte ;

-- create [Q.120]

create table inventory(
item_id int,
item_type varchar(30),
item_category varchar(30),
square_footage float);

-- insert into inventory
insert into inventory values(1374, 'prime_eligible', 'mini refrigerator', 68.00);
insert into inventory values(4245, 'not_prime', 'standing lamp', 26.40);
insert into inventory values(2452, 'prime_eligible', 'television', 85.00);
insert into inventory values(3255, 'not_prime', 'side table', 22.60);
insert into inventory values(1672, 'prime_eligible', 'laptop', 8.50);

select * from inventory;

-- Q120.Write a SQL query to find the number of prime and non-prime items that can be stored in the 500,000
-- square feet warehouse. Output the item type and number of items to be stocked.

SELECT item_type,
(CASE WHEN item_type = 'prime_eligible' 
THEN floor(500000/total_square_footage) * total_item_type
ELSE floor(((500000) - (floor(500000/(SELECT SUM(square_footage) FROM inventory WHERE item_type = 'prime_eligible'))* 
(SELECT SUM(square_footage) FROM inventory WHERE item_type = 'prime_eligible')))/(total_square_footage)
) * total_item_type END) AS item_count   

FROM(SELECT item_type,COUNT(item_type) AS total_item_type,SUM(square_footage) AS total_square_footage
FROM inventory
GROUP BY item_type) AS temp_table1       
ORDER BY item_count DESC;

-- create [Q.121] [REPEATED  Same as Q.82]

-- create [Q.122]
create table search_frequency(
searches int,
num_users int);

-- insert into search_frequency

insert into search_frequency values(1,2);
insert into search_frequency values(2,2);
insert into search_frequency values(3,3);
insert into search_frequency values(4,1);

-- Q122.Write a query to report the median of searches made by a user. Round the median to one decimal
-- point.
-- Hint- Write a subquery or common table expression (CTE) to generate a series of data (that's keyword
-- for column) starting at the first search and ending at some point with an optional incremental value.

select * from search_frequency;

with cte as(
select searches
from search_frequency
group by searches,generate_series(1,num_users)
)
select round(percentile_cont(0.5) within group(order by searches)::decimal,1) as median
from search_frequency;


-- create [Q.123]

create table advertiser(
user_id varchar(30),
status varchar(30));

create table daily_pay(
user_id varchar(15),
paid float);

-- insert into daily_pay
insert into daily_pay values('yahoo',45.00);
insert into daily_pay values('alibaba', 100.00);
insert into daily_pay values('target', 13.00);

-- insert into advertiser

insert into advertiser values('bing', 'NEW');
insert into advertiser values('yahoo', 'NEW');
insert into advertiser values('alibaba', 'EXISTING');

-- Q123.Write a query to update the Facebook advertiser's status using the daily_pay table. Advertiser is a
-- two-column table containing the user id and their payment status based on the last payment and
-- daily_pay table has current information about their payment. Only advertisers who paid will show up in
-- this table.

select * from advertiser;
select * from daily_pay;

WITH payment_status AS (
SELECT
  advertiser.user_id,
  advertiser.status,
  payment.paid
FROM advertiser
LEFT JOIN daily_pay AS payment
  ON advertiser.user_id = payment.user_id

UNION

SELECT
  payment.user_id,
  advertiser.status,
  payment.paid
FROM daily_pay AS payment
LEFT JOIN advertiser
  ON advertiser.user_id = payment.user_id
)

SELECT
  user_id,
  CASE WHEN paid IS NULL THEN 'CHURN'
  	WHEN status != 'CHURN' AND paid IS NOT NULL THEN 'EXISTING'
  	WHEN status = 'CHURN' AND paid IS NOT NULL THEN 'RESURRECT'
  	WHEN status IS NULL THEN 'NEW'
  END AS new_status
FROM payment_status
ORDER BY user_id;


-- create [Q.124] [REPEATED Same as Q.85 ]

-- create [Q.125] [REPEATED Same as Q.86]

-- create [Q.126] [REPEATED Same as Q.87]

-- create [Q.127] [REPEATED Same as Q.68]

-- create [Q.128] [REPEATED Same as Q.55]

-- create [Q.129] [REPEATED Same as Q.90]

-- create [Q.130] [REPEATED Same as Q.91]

-- create [Q.131] [REPEATED Same as Q.92]

-- create [Q.132] [REPEATED Same as Q.93]

-- create [Q.133] [REPEATED Same as Q.94]

-- create [Q.134] [REPEATED Same as Q.133 and Q.94]

-- create [Q.135] [REPEATED Same as Q.101]

-- create [Q.136] [REPEATED Same as Q.101 and Q.135]

-- create [Q.137] [REPEATED Same as Q.106]

-- create [Q.138] [REPEATED Same as Q.107]

-- create [Q.139]


create table occupations(
name varchar(30),
occupation varchar(30));

insert into occupations values('Samantha','Doctor');
insert into occupations values('Julia','Actor');
insert into occupations values('Maria','Actor');
insert into occupations values('Meera','Singer');
insert into occupations values('Ashely','Professor');
insert into occupations values('Ketty','Professor');
insert into occupations values('Christeen','Professor');
insert into occupations values('Jane','Actor');
insert into occupations values('Jenny','Doctor');
insert into occupations values('Priya','Singer');

-- 139.(1). Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by
-- the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For
-- example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of occurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order

-- 1st Query output
select concat(name,'(',substr(occupation,1,1),')') as name
from occupations;

-- 2nd Query Output
with cte as(
select occupation,count(*) as occ_count
from occupations group by occupation)

select concat('There are a total of ',occ_count,' ',occupation,'s') as statement
from cte
order by occ_count;


-- create [Q.140]

create table occupations(
name varchar(30),
occupation varchar(30));

insert into occupations values('Samantha','Doctor');
insert into occupations values('Julia','Actor');
insert into occupations values('Maria','Actor');
insert into occupations values('Meera','Singer');
insert into occupations values('Ashely','Professor');
insert into occupations values('Ketty','Professor');
insert into occupations values('Christeen','Professor');
insert into occupations values('Jane','Actor');
insert into occupations values('Jenny','Doctor');
insert into occupations values('Priya','Singer');
-- Q140 . Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and
-- displayed underneath its corresponding Occupation. The output column headers should be Doctor,
-- Professor, Singer, and Actor, respectively.
-- Note: Print NULL when there are no more names corresponding to an occupation.
select Doctor,Professor,Singer,Actor from(
select
    rn,
    max(case when occupation = 'Doctor' then name end) Doctor,
    max(case when occupation = 'Professor'  then name end) Professor,
    max(case when occupation = 'Singer' then name end) Singer,
    max(case when occupation = 'Actor'  then name end) Actor
from (
    select o.*, row_number() over(partition by occupation order by name) rn
    from occupations o
)a
group by rn)b;



-- create [Q.141] [REPEATED Same as Q.110]

-- create [Q.142] [REPEATED Same as Q.111]

-- create [Q.143] 

create table functions(
x int ,
y int);

insert into functions values(20,20);
insert into functions values(20,20);
insert into functions values(20,21);
insert into functions values(23,22);
insert into functions values(22,23);
insert into functions values(21,20);

select * from functions;

-- Q143.Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
-- Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
select distinct x1,y1 from(
select f1.x as x1,f1.y as y1,f2.x as x2,f2.y as y2
from functions f1 inner join functions f2
on f1.x=f2.y and f1.y=f2.x)a
where x1<=y1
order by x1;


-- create [Q.144]


create table packages(
id int,
salary float);

create table friends(
id int,
friend_id int);

create table students3(
id int,
name varchar(30));

insert into packages values(1,15.20);
insert into packages values(2,10.06);
insert into packages values(3,11.55);
insert into packages values(4,12.12);

insert into friends values(1,2);
insert into friends values(2,3);
insert into friends values(3,4);
insert into friends values(4,1);

insert into students3 values(1,'AShley');
insert into students3 values(2,'Samantha');
insert into students3 values(3,'Julia');
insert into students3 values(4,'Scarlet');

-- Q144. Write a query to output the names of those students whose best friends got offered a higher salary
-- than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed
-- that no two students get the same salary offer.

select * from packages;
select * from friends;
select * from students3;

with cte as(
select s.id,s.name,f.friend_id,p.salary as student_salary,p1.salary as friend_salary
from students3 s left join friends f
on s.id=f.id left join packages p 
on s.id=p.id left join packages p1 
on f.friend_id=p1.id
)
select name from cte
where student_salary <friend_salary
order by friend_salary;


-- create [Q.145]


create table hackers(
hacker_id int,
name varchar(30));

create table difficulty(
difficulty_level int,
score int);

create table challenges(
challenge_id int,
hacker_id int,
difficulty_level int);

create table submission(
submission_id int,
hacker_id int,
challenge_id int,
score int);


insert into hackers values(5580,'Rose');
insert into hackers values(8439,'Angela');
insert into hackers values(27205,'Frank');
insert into hackers values(52243,'Patrick');
insert into hackers values(52243,'Lisa');
insert into hackers values(57645,'Kimberly');
insert into hackers values(77726,'Bonnie');
insert into hackers values(83082,'Michael');
insert into hackers values(86870,'Todd');
insert into hackers values(90411,'Joe');


insert into difficulty values(1,20);
insert into difficulty values(2,30);
insert into difficulty values(3,40);
insert into difficulty values(4,60);
insert into difficulty values(5,80);
insert into difficulty values(6,100);
insert into difficulty values(7,120);

insert into challenges values(4810,77726,4);
insert into challenges values(21089,27205,1);
insert into challenges values(36566,5580,7);
insert into challenges values(66730,52243,6);
insert into challenges values(71055,52243,2);


insert into submission values(68628,77726,36566,30);
insert into submission values(65300,77726,21089,10);
insert into submission values(40326,52243,36566,77);
insert into submission values(8941,27205,4810,4);
insert into submission values(83554,77726,66730,30);
insert into submission values(43353,52243,66730,0);
insert into submission values(55385,52348,71055,20);
insert into submission values(39784,27205,71055,23);
insert into submission values(94613,86870,71055,30);
insert into submission values(45788,52348,36566,0);
insert into submission values(93058,86870,36566,30);
insert into submission values(7344,8439,66730,92);
insert into submission values(2721,8439,4810,36);
insert into submission values(523,5580,71055,4);
insert into submission values(49105,52348,66730,0);
insert into submission values(55877,57645,66730,80);
insert into submission values(38355,27205,66730,35);
insert into submission values(3924,8439,36566,80);
insert into submission values(97397,90411,66730,100);
insert into submission values(84162,83028,4810,40);
insert into submission values(97431,90411,71055,30);


-- Q145.Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
-- Write a query to print the respective hacker_id and name of hackers who achieved full scores for more
-- than one challenge. Order your output in descending order by the total number of challenges in which
-- the hacker earned a full score. If more than one hacker received full scores in the same number of
-- challenges, then sort them by ascending hacker_id.

with cte as(
select s.hacker_id,h.name,s.challenge_id,s.score as obtained_score,c.difficulty_level,d.score as max_score
from submission s left join hackers h on s.hacker_id=h.hacker_id
left join challenges c on c.challenge_id=s.challenge_id left join difficulty d on c.difficulty_level=d.difficulty_level
)
select hacker_id,name
from cte
where obtained_score=max_score
group by hacker_id , name
having count(*)>=1
order by count(*) desc,hacker_id limit 1 ;


-- create [Q.146]


create table projects(
task_id int,
start_date date,
end_date date);

insert into projects values(1,'2015-10-01','2015-10-02');
insert into projects values(2,'2015-10-02','2015-10-03');
insert into projects values(3,'2015-10-03','2015-10-04');
insert into projects values(4,'2015-10-13','2015-10-14');
insert into projects values(5,'2015-10-14','2015-10-15');
insert into projects values(6,'2015-10-28','2015-10-29');
insert into projects values(7,'2015-10-30','2015-10-31');

-- Q146.Write a query to output the start and end dates of projects listed by the number of days it took to
-- complete the project in ascending order. If there is more than one project that have the same number
-- of completion days, then order by the start date of the project.

select * from projects;
with cte as(
select *,date_sub(start_date,interval task_id day) as gp_date
from projects
)
select start_date,end_date from(
select gp_date,min(start_date) as start_date,max(end_date) as end_date
from cte 
group by gp_date
order by count(*) 
)a;

-- create [Q.147]


create table transactions(
user_id int,
amount float,
transaction_date timestamp);

-- insert into transactions


insert into transactions values(1, 9.99, str_to_date('08/01/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(1, 55, str_to_date('08/17/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(2, 149.5, str_to_date('08/05/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(2, 4.89, str_to_date('08/06/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(2, 34, str_to_date('08/07/2022 10:00:00','%m/%d/%Y %H:%i:%s'));

-- Q147.In an effort to identify high-value customers, Amazon asked for your help to obtain data about users
-- who go on shopping sprees. A shopping spree occurs when a user makes purchases on 3 or more
-- consecutive days. List the user IDs who have gone on at least 1 shopping spree in ascending order.

select * from transactions;
with cte as(
select *,
transaction_date -row_number() over(partition by user_id order by transaction_date) as gp_date
from transactions)
select distinct user_id from cte
group by user_id,date(gp_date) having count(*)>=3;

-- create [Q.148]


create table  payments(
payer_id int,
recipient_id int,
amount int);

 -- insert into payments
 
insert into payments values(101, 201, 30);
insert into payments values(201, 101, 10);
insert into payments values(101, 301, 20);
insert into payments  values(301, 101, 80);
insert into payments values(201, 301, 70);

-- Q148.You are given a table of PayPal payments showing the payer, the recipient, and the amount paid. A
-- two-way unique relationship is established when two people send money back and forth. Write a
-- query to find the number of two-way unique relationships in this data.
-- Assumption:
-- ● A payer can send money to the same recipient multiple times

select count(p1.payer_id) as unique_relationships
from payments p1 inner join payments p2
on p1.payer_id=p2.recipient_id and p1.recipient_id=p2.payer_id and p1.payer_id>p2.payer_id;

-- create [Q.149]

create table user_transaction(
transaction_id int,
user_id int,
spend float,
transaction_Date timestamp);

insert into user_transaction values(759274, 111, 49.50, '2022-02-03 00:00:00');
insert into user_transaction values(850371 ,111, 51.00, '2022-03-15 00:00:00' );
insert into user_transaction values(615348, 145 ,36.30, '2022-03-22 00:00:00');
insert into user_transaction values(137424, 156, 151.00 ,'2022-04-04 00:00:00');
insert into user_transaction values(248475, 156, 87.00 ,'2022-04-16 00:00:00');

-- Q149. Assume you are given the table below on user transactions. Write a query to obtain the list of
-- customers whose first transaction was valued at $50 or more. Output the number of users.
-- Clarification:
-- ● Use the transaction_date field to determine which transaction should be labeled as the first
-- for each user.
-- ● Use a specific function (we can't give too much away!) to account for scenarios where a user
-- had multiple transactions on the same day, and one of those was the first.

select * from user_transaction;

select count(user_id) as users from(
select user_id,spend,rank() over(partition by user_id order by transaction_date) as rn
from user_transaction)a
where rn=1 and spend>=50

-- create [Q.150]


create table measurements(
measurement_id int,
measurement_value float,
measurement_time datetime);

-- insert into Measurements


insert into measurements values(131233, 1109.51 ,str_to_date('07/10/2022 09:00:00','%m/%d/%Y %H:%i:%s'));
insert into measurements values(135211, 1662.74 ,str_to_date('07/10/2022 11:00:00','%m/%d/%Y %H:%i:%s'));
insert into measurements values(523542, 1246.24 ,str_to_date('07/10/2022 13:15:00','%m/%d/%Y %H:%i:%s'));
insert into measurements values(143562, 1124.50 ,str_to_date('07/11/2022 15:00:00','%m/%d/%Y %H:%i:%s'));
insert into measurements values(346462, 1234.14 ,str_to_date('07/11/2022 16:45:00','%m/%d/%Y %H:%i:%s'));

-- Q150.Assume you are given the table below containing measurement values obtained from a sensor over
-- several days. Measurements are taken several times within a given day.
-- Write a query to obtain the sum of the odd-numbered and even-numbered measurements on a
-- particular day, in two different columns.

select * from measurements;
with cte as(
select date(measurement_time) as measurement_day,measurement_value,
row_number() over(partition by day(measurement_time) order by measurement_id)as rn
from measurements)
select measurement_day,
round(sum(case when rn%2=1 then measurement_value else 0 end),2) as odd_sum,
round(sum(case when rn%2=0 then measurement_value else 0 end),2) as even_sum
from cte
group by measurement_day;


-- create [Q.151] [REPEATED Same as Q.147]

-- create [Q.152] 


create table rental_amenities(
rental_id int,
amentity varchar(30));


insert into rental_amenities values(123 ,'pool');
insert into rental_amenities values(123 ,'kitchen');
insert into rental_amenities values(234 ,'hot tub');
insert into rental_amenities values(234 ,'fireplace');
insert into rental_amenities values(345 ,'kitchen');
insert into rental_amenities values(345 ,'pool');
insert into rental_amenities values(456 ,'pool');

-- Q152.The Airbnb Booking Recommendations team is trying to understand the "substitutability" of two
-- rentals and whether one rental is a good substitute for another. They want you to write a query to find
-- the unique combination of two Airbnb rentals with the same exact amenities offered.
-- Output the count of the unique combination of Airbnb rentals.

select * from rental_amenities;

with cte as(
select rental_id,group_concat(amentity order by amentity) as amentities
from rental_amenities
group by rental_id)
select count(*) as matching_airbnb from(
select amentities,count(distinct amentities) as gp_match
from cte
group by amentities having count(*)>1)a;

-- create [Q.153] 


create table ad_campaigns(
campaign_id int,
spend  int,
revenue int,
advertiser_id int);

insert into ad_campaigns values(1, 5000, 7500, 3);
insert into ad_campaigns values(12, 1000, 900, 1);
insert into ad_campaigns values(13, 3000, 12000, 2);
insert into ad_campaigns values(14, 500, 2000, 4);
insert into ad_campaigns values(15, 100, 400, 4);

-- Q153.Google marketing managers are analysing the performance of various advertising accounts over the
-- last month. They need your help to gather the relevant data.
-- Write a query to calculate the return on ad spend (ROAS) for each advertiser across all ad campaigns.
-- Round your answer to 2 decimal places, and order your output by the advertiser_id

select * from ad_campaigns;

select advertiser_id, round(sum(revenue)/sum(spend),2) as ROAS
from ad_campaigns
group by advertiser_id
order by advertiser_id;

-- create [Q.154] 

create table employee_pay(
employee_id int,
salary int,
title varchar(30));

-- insert into  employee_pay 
insert into employee_pay values(101, 80000, 'Data Analyst');
insert into employee_pay values(102, 90000, 'Data Analyst');
insert into employee_pay values(103, 100000, 'Data Analyst');
insert into employee_pay values(104, 30000, 'Data Analyst');
insert into employee_pay values(105, 120000, 'Data Scientist');
insert into employee_pay values(106, 100000, 'Data Scientist');
insert into employee_pay values(107, 80000, 'Data Scientist');
insert into employee_pay values(108,310000, 'Data Scientist');

-- Q154. Write a query that shows the following data for each compensation outlier: employee ID, salary, and
-- whether they are potentially overpaid or potentially underpaid (refer to Example Output below).
with cte as(
select title,round(avg(salary),2) as avg_salary
from employee_pay
group by title
)
select employee_Id ,salary ,status from(
select e.employee_id,e.salary,
case when e.salary > 2*c.avg_salary then 'Overpaid'
when e.salary < c.avg_salary/2 then 'Underpaid'
end as status
from  employee_pay e inner join cte c 
on e.title=c.title)a
where status is not null;

-- create [Q.155] [REPEATED Same as Q.148]

-- create [Q.156]


create table purchases(
user_id int,
product_id int,
quantity int,
purchase_time datetime);


insert into purchases values(536 ,3223 ,6 ,str_to_date('01/11/2022 12:33:44','%m/%d/%Y %H:%i:%s'));
insert into purchases values(827 ,3585 ,35 ,str_to_date('02/20/2022 14:05:26','%m/%d/%Y %H:%i:%s'));
insert into purchases values(536 ,3223 ,5 ,str_to_date('03/02/2022 09:33:28','%m/%d/%Y %H:%i:%s'));
insert into purchases values(536 ,1435 ,10 ,str_to_date('03/02/2022 08:40:00','%m/%d/%Y %H:%i:%s'));
insert into purchases values(827 ,2452 ,45 ,str_to_date('04/09/2022 00:00:00','%m/%d/%Y %H:%i:%s'));

-- Q156.Assume you are given the table below containing information on user purchases. Write a query to
-- obtain the number of users who purchased the same product on two or more different days. Output
-- the number of unique users.
-- PS. On 26 Oct 2022, we expanded the purchases data set, thus the official output may vary from before

select * from purchases;

select count(distinct user_id) as repeated_customers
from purchases 
group by user_id,product_id having count(distinct purchase_time)>=2;

-- create [Q.157]

create table transactions(
transaction_id int,
type  enum('deposit', 'withdrawal'),
amount float,
transaction_date timestamp);



insert into transactions values(19153 ,'deposit' ,65.90 ,str_to_date('07/10/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(53151 ,'deposit' ,178.55 ,str_to_date('07/08/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(29776 ,'withdrawal' ,25.90 ,str_to_date('07/08/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(16461 ,'withdrawal' ,45.99 ,str_to_date('07/08/2022 10:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(77134 ,'deposit' ,32.60 ,str_to_date('07/10/2022 10:00:00','%m/%d/%Y %H:%i:%s'));

-- Q157.Say you have access to all the transactions for a given merchant account. Write a query to print the
-- cumulative balance of the merchant account at the end of each day, with the total balance reset back
-- to zero at the end of the month. Output the transaction date and cumulative balance.

select * from transactions;

with cte as(
select transaction_id,type,transaction_date,
	case when type='withdrawal' then  -1*amount
    else amount end as amount 
    from transactions
    )
 select transaction_date,round(sum(amount),2) as balance
 from cte
 group by day(transaction_date)
 order by date(transaction_date);
    
    

-- create [Q.158] 


create table product_spend(
category varchar(30),
product varchar(30),
user_id int,
spend float,
transaction_date timestamp);



insert into product_spend values('appliance','refrigerator', 165, 246.00 ,str_to_date('12/26/2021 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into product_spend values('appliance' ,'refrigerator', 123 ,299.99 ,str_to_date('03/02/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into product_spend values('appliance' ,'washing machine' ,123,219.80 ,str_to_date('03/02/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into product_spend values('electronics' ,'vacuum', 178 ,152.00 ,str_to_date('04/05/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into product_spend values('electronics', 'wireless headset', 156 ,249.90 ,str_to_date('07/08/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into product_spend values('electronics', 'vacuum' ,145 ,189.00 ,str_to_date('07/15/2022 12:00:00','%m/%d/%Y %H:%i:%s'));

-- Q158 Assume you are given the table below containing information on Amazon customers and their spend
-- on products belonging to various categories. Identify the top two highest-grossing products within
-- each category in 2022. Output the category, product, and total spend.

select * from product_spend;
with cte as(
select category,product,round(sum(spend),2) as total_spend
from product_spend
where year(transaction_date)=2022
group by category,product)
select category,product,total_spend from(
select category,product,total_spend,dense_rank() over(partition by category order by total_spend desc) as rn
from cte)a
where rn in(1,2)
order by category,product,total_spend;

-- create [Q.159]


create table users(
user_id int,
signup_date datetime,
last_login datetime);



insert into users values(1001 ,str_to_date('06/01/2022 12:00:00','%m/%d/%Y %H:%i:%s') ,str_to_date('07/05/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into users values(1002 ,str_to_date('06/03/2022 12:00:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/15/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into users values(1004 ,str_to_date('06/02/2022 12:00:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/15/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into users values(1006 ,str_to_date('06/15/2022 12:00:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/27/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into users values(1012 ,str_to_date('06/16/2022 12:00:00','%m/%d/%Y %H:%i:%s') ,str_to_date('07/22/2022 12:00:00','%m/%d/%Y %H:%i:%s'));

-- Q159.Facebook is analysing its user signup data for June 2022. Write a query to generate the churn rate by
-- week in June 2022. Output the week number (1, 2, 3, 4, ...) and the corresponding churn rate rounded
-- to 2 decimal places.
-- For example, week number 1 represents the dates from 30 May to 5 Jun, and week 2 is from 6 Jun to 12 Jun.

select * from users;

-- SET SQL_SAFE_UPDATES = 0;
-- insert into users4 values(1001, '2022-06-01 12:00:00' ,'2022-07-05 12:00:00');
-- delete from users4 where user_id=1001;
with cte as(
select user_id,signup_date,last_login,
WEEK(signup_date,6) - WEEK(DATE_SUB(signup_date, INTERVAL DAYOFMONTH(signup_date)-1 DAY),6)+1 as signup_week,
	   case when datediff(last_login,signup_date)<28 then 1
       else 0 end as chk
       from users)
       select signup_week,round((100.0*sum(chk)/count(chk)),2) as churn_rate
       from cte
       group by signup_week;

