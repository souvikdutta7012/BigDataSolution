
-- create [Q.51]
CREATE TABLE  word(
name varchar(30),
continent varchar(20),
area int,
population bigint,
gdp bigint,
primary key(name)
);


-- insert into word
insert into word values('Afghanistan', 'Asia', 652230 ,25500100 ,20343000000);
insert into word values('Albania', 'Europe', 28748 ,2831741, 12960000000);
insert into word values('Algeria', 'Africa', 2381741 ,37100000, 188681000000);
insert into word values('Andorra', 'Europe', 468 ,78115 ,3712000000);
insert into word values('Angola', 'Africa', 1246700, 20609294, 100990000000);

-- Q.51 Write an SQL query to report the name, population, and area of the big countries

select name,population,area 
from word
where population>=3000000 or population>=25000000;


-- create [Q.52]
CREATE TABLE customer(
id int,
name varchar(20),
referee_id int,
primary key(id)
);


-- insert into customer
insert into customer values(1, 'Will', null);
insert into customer values(2, 'Jane', null);
insert into customer values(3, 'Alex', 2);
insert into customer values(4, 'Bill', null);
insert into customer values(5, 'Zack', 1);
insert into customer values(6, 'Mark', 2);

-- Q.52 Write an SQL query to report the names of the customer that are not referred by the customer with id
-- = 2.

select name from customer where referee_id!=2 or referee_id is null;


-- create [Q.53]
CREATE TABLE customers  (
id int,
name varchar(20),
primary key(id)
);

CREATE TABLE orders (
id int,
customerId int,
primary key(id),
foreign key (customerId) references customers(id)
);

-- insert into customers
insert into customers values(1, 'Joe');
insert into customers values(2, 'Henry');
insert into customers values(3, 'Sam');
insert into customers values(4, 'Max');

-- insert into orders
insert into orders values(1,3);
insert into orders values(2, 1);

-- Q.53 Write an SQL query to report all customers who never order anything.

select C.name from customers C 
left join orders O on C.id=O.customerId 
where O.id is null;

-- create [Q.54]
CREATE TABLE employee  (
employee_id int,
team_id int,
primary key(employee_id)
);

-- insert into employee
insert into employee values(1, 8);
insert into employee values(2, 8);
insert into employee values(3, 8);
insert into employee values(4, 7);
insert into employee values(5, 9);
insert into employee values(6, 9);

-- Q.54 Write an SQL query to find the team size of each of the employees.

select employee_id,count(employee_id)over(partition by team_id) as size 
from employee order by employee_id ;


-- create [Q.55]
CREATE TABLE person  (
id int,
name varchar(20),
phone_number varchar(20),
primary key(id)
);

CREATE TABLE country  (
name varchar(20),
country_code varchar(20),
primary key(country_code)
);
CREATE TABLE calls (
caller_id int,
callee_id int,
duration int
);
-- insert into person
insert into person values(3, 'Jonathan', '051-1234567');
insert into person values(12, 'Elvis', '051-7654321');
insert into person values(1, 'Moncef', '212-1234567');
insert into person values(2, 'Maroua', '212-6523651');
insert into person values(7, 'Meir', '972-1234567');
insert into person values(9, 'Rachel', '972-0011100');
-- insert into country
insert into country values('Peru', 51);
insert into country values('Israel', 972);
insert into country values('Morocco', 212);
insert into country values('Germany', 49);
insert into country values('Ethiopia', 251);
-- insert into call
insert into calls values(1, 9, 33);
insert into calls values(2, 9, 4);
insert into calls values(1, 2, 59);
insert into calls values(3, 12, 102);
insert into calls values(3, 12, 330);
insert into calls values(12, 3, 5);
insert into calls values(7, 9, 13);
insert into calls values(7, 1, 3);
insert into calls values(9, 7, 1);
insert into calls values(1, 7, 7);
-- Q.55 Write an SQL query to find the countries where this company can invest.


with cte1 as(
select id,name as P_name,
case when substring(phone_number,1,1)=0
     then substring(phone_number,2,2)
     else substring(phone_number,1,3)
end as code from person ),
cte2 as(
select c1.* ,c.*,ct.name from calls c inner join cte1 c1 on c.caller_id=c1.id or c.callee_id=c1.id
left join country ct on ct.country_code=c1.code
)
select name from cte2 group by name having avg(duration)>
(select avg(duration) from cte2);


-- create [Q.56]
CREATE TABLE activity (
player_id int,
device_id int,
event_date date,
games_played int,
primary key(player_id, event_date)
);

-- insert into activity
insert into activity values(1, 2, '2016-03-01', 5);
insert into activity values(1, 2, '2016-03-02', 6);
insert into activity values(2, 3, '2017-06-25', 1);
insert into activity values(3, 1, '2016-03-02', 0);
insert into activity values(3, 4, '2018-07-03', 5);
-- Q.56 Write an SQL query to report the device that is first logged in for each player.

with cte as(
select *,rank()over(partition by player_id order by event_date asc) as ranking from activity
)
select player_id,device_id from cte where ranking=1;



-- create [Q.57]
CREATE TABLE Orders  (
order_number int,
customer_number int,
primary key(order_number)
);

-- insert into Orders

insert into Orders values(1 ,1);
insert into Orders values(2 ,2);
insert into Orders values(3 ,3);
insert into Orders values(4 ,3);


-- Q.57 Write an SQL query to find the customer_number for the customer who has placed the largest
-- number of orders.

select customer_number from Orders group by customer_number
order by count(customer_number) desc limit 1;


-- Follow up: What if more than one customer has the largest number of orders, can you find all the
-- customer_number in this case?
with cte as(
select customer_number,count(customer_number) as Maximum from Orders 
group by customer_number
order by count(customer_number) desc limit 1)
select customer_number from Orders group by customer_number having 
count(customer_number) in (select Maximum from cte)
;



-- create [Q.58]
CREATE TABLE cinema  (
seat_id int auto_increment primary key,
free bool
);

-- insert into cinema
insert into cinema values(1, 1);
insert into cinema values(2, 0);
insert into cinema values(3, 1);
insert into cinema values(4, 1);
insert into cinema values(5, 1);


-- Q. 58 Write an SQL query to report all the consecutive available seats in the cinema

with cte as(
select seat_id,free as curr_seat,
coalesce(lead(free) over(order by seat_id),0) as next_seat,
coalesce(lag(free) over(order by seat_id),0) as prev_seat
from cinema)
select seat_id from cte
where (curr_seat=1 and next_seat=1) or
(curr_seat=1 and prev_seat=1)
order by seat_id
;



-- create [Q.59]
create table salesperson(
sales_id int,
name varchar(30),
salary bigint,
commision_rate int,
hire_date date,
primary key(sales_id));


create table company(
com_id int,
name varchar(30),
city varchar(30),
primary key(com_id));

create table orders(
order_id int,
order_date date,
com_id int,
sales_id int,
amount bigint,
primary key(order_id),
foreign key(com_id) references company(com_id),
foreign key(sales_id)references salesperson(sales_id)); 

-- insert into salesperson
insert into salesperson values(1, 'John', 100000, 6, '2006-4-1');
insert into salesperson values(2, 'Amy', 12000, 5, '2010-5-1');
insert into salesperson values(3, 'Mark', 65000, 12, '2008-12-25');
insert into salesperson values(4, 'Pam', 25000, 25, '2005-1-1');
insert into salesperson values(5, 'Alex', 5000, 10, '2007-2-3');

-- insert into company
insert into company values(1, 'RED', 'Boston');
insert into company values(2, 'ORANGE', 'New York');
insert into company values(3, 'YELLOW', 'Boston');
insert into company values(4, 'GREEN', 'Austin');

-- insert into orders
insert into orders values(1, '2014-1-1', 3 ,4 ,10000);
insert into orders values(2, '2014-2-1', 4 ,5 ,5000);
insert into orders values(3, '2014-3-1', 1 ,1 ,50000);
insert into orders values(4, '2014-4-1', 1 ,4 ,25000);

-- Q59.Write an SQL query to report the names of all the salespersons who did not have any orders related to
-- the company with the name "RED". Return the result table in any order


with cte as(
select S.sales_id as id,S.name as s_name,C.name as c_name from salesperson S left join orders O on S.sales_id=O.sales_id
left  join company C on C.com_id=O.com_id 
)
select s_name from cte where s_name not in(select distinct s_name from cte
where c_name='RED')
;


-- create [Q.60]
create table triangle(
x int,
y int,
z int,
primary key(x,y,z)
);
 -- insert into triangle
insert into triangle values(13, 15, 30);
insert into triangle values(10, 20, 15);

-- Q60. Write an SQL query to report for every three line segments whether they can form a triangle.
-- Return the result table in any order

select x,y,z,
CASE
WHEN (x+y>z) and (x+z>y) and (y+z>x) then 'yes' else 'no'
END as TRIANGLE
from triangle;

-- create [Q.61]
create table point(
x int,
primary key(x));

-- insert into point
insert into point values(-1);
insert into point values(0);
insert into point values(2);


-- Q61.Write an SQL query to report the shortest distance between any two points from the Point table
with cte as(
select abs(P1.x - P2.x) as shortest  from point P1 inner join point P2 on P1.x>P2.x or P1.x<P2.x
)
select min(shortest) as shortest from cte;

-- create [Q.62]
create table actiondirector(
actor_Id int,
director_id int,
timestamp int,
primary key(timestamp));

-- insert into actiondirector

insert into actiondirector values(1, 1, 0);
insert into actiondirector values(1, 1, 1);
insert into actiondirector values(1, 1, 2);
insert into actiondirector values(1, 2, 3);
insert into actiondirector values(1, 2, 4);
insert into actiondirector values(2, 1, 5);
insert into actiondirector values(2, 1, 6);

-- Q62.Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has
-- cooperated with the director at least three times.

select actor_id,director_Id
from actiondirector
group by actor_id,director_id
having count(*)>=3;

-- create [Q.63]
create table product(
product_id int,
product_name varchar(30),
primary key(product_id));

create table sales(
sale_id int,
product_id int,
year int,
quantity int,
price int,
primary key(sale_id,year),
foreign key(product_id) references product(product_id));


-- insert into product

insert into product values(100, 'Nokia');
insert into product values(200, 'Apple');
insert into product values(300, 'Samsung');

-- insert into Sales
insert into sales values(1, 100, 2008, 10, 5000);
insert into sales values(2, 100, 2009, 12, 5000);
insert into sales values(7, 200, 2011, 15, 9000);

-- Q63.Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.

select p.product_name,s.year,s.price
from sales s left join product p
on s.product_id=p.product_id;

-- create [Q.64]

create table employee(
employee_Id int,
name varchar(30),
exp_year int,
primary key(employee_id));

create table project(
project_id int,
employee_Id int,
primary key(project_id ,employee_id),
foreign key(employee_id) references employee(employee_Id));

-- insert into employee
insert into employee values(1, 'Khaled' ,3);
insert into employee values(2, 'Ali' ,2);
insert into employee values(3, 'John' ,1);
insert into employee values(4, 'Doe' ,2);
-- insert into project
insert into project values(1, 1);
insert into project values(1, 2);
insert into project values(1, 3);
insert into project values(2, 1);
insert into project values(2, 4);

-- Q64.Write an SQL query that reports the average experience years of all the employees for each project,
-- rounded to 2 digits.Return the result table in any order.
select p.project_id,round(avg(e.exp_year),1)
from project p left join employee e
on p.employee_id=e.employee_Id
group by project_id;

-- create [Q.65]

create table product(
product_id int,
product_name varchar(30),
unit_price int,
primary key(product_Id));

create table sales(
seller_id int,
product_Id int,
buyer_id int,
sale_date date,
quantity int,
price int,
foreign key(product_id) references product(product_id));


-- insert into product
insert into product values(1, 'S8', 1000);
insert into product values(2, 'G4', 800);
insert into product values(3, 'iPhone', 1400);
-- insert into sales
insert into sales values(1, 1, 1, '2019-01-21', 2, 2000);
insert into sales values(1, 2, 2, '2019-02-17', 1, 800);
insert into sales values(2, 2, 3, '2019-06-02', 1, 800);
insert into sales values(3, 3, 4, '2019-05-13', 2, 2800);

--  Q65.Write an SQL query that reports the best seller by total sales price, If there is a tie, report them all.
-- Return the result table in any order.
with cte as(
select seller_id,sum(price) as total
from sales
group by seller_id
)
select seller_id from cte 
where total=(select max(total) from cte) order by seller_id;

-- create [Q.66]
create table product(
product_id int,
product_name varchar(30),
unit_price int,
primary key(product_Id));

create table sales(
seller_id int,
product_Id int,
buyer_id int,
sale_date date,
quantity int,
price int,
foreign key(product_id) references product(product_id));


-- insert into product
insert into product values(1, 'S8', 1000);
insert into product values(2, 'G4', 800);
insert into product values(3, 'iPhone', 1400);
-- insert into sales
insert into sales values(1, 1, 1, '2019-01-21', 2, 2000);
insert into sales values(1, 2, 2, '2019-02-17', 1, 800);
insert into sales values(2, 2, 3, '2019-06-02', 1, 800);
insert into sales values(3, 3, 4, '2019-05-13', 2, 2800);

-- Q66.Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note that S8 and
-- iPhone are products present in the Product table. Return the result table in any order

with cte as(
select s.buyer_id, group_concat(p.product_name) as products
from product p  join sales s
on p.product_Id=s.product_Id
group by buyer_id
order by buyer_id
)
select buyer_id from cte
where 'S8' in(products) and 'iphone' not in(products);

-- create [Q.67]
create table customer(
customer_id int,
name varchar(30),
visited_on date,
amount int ,
primary key (customer_id, visited_on));

-- insert into customer 

insert into customer values(1, 'Jhon' ,'2019-01-01' ,100);
insert into customer values(2, 'Daniel' ,'2019-01-02' ,110);
insert into customer values(3, 'Jade' ,'2019-01-03' ,120);
insert into customer values(4, 'Khaled' ,'2019-01-04' ,130);
insert into customer values(5, 'Winston' ,'2019-01-05' ,110);
insert into customer values(6, 'Elvis' ,'2019-01-06' ,140);
insert into customer values(7, 'Anna' ,'2019-01-07' ,150);
insert into customer values(8, 'Maria' ,'2019-01-08' ,80);
insert into customer values(9, 'Jaze' ,'2019-01-09' ,110);
insert into customer values(1, 'Jhon' ,'2019-01-10' ,130);
insert into customer values(3, 'Jade' ,'2019-01-10' ,150);

-- Q.67Write an SQL query to compute the moving average of how much the customer paid in a seven days
-- window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

with cte as(
select visited_on,sum(amount) as amount from customer group by visited_on)
select d.visited_on,d.amount,d.avg_amount,d.prev from
(select visited_on,
sum(amount) over(order by visited_on rows between 6 preceding and current row) as amount,
round(sum(amount) over(order by visited_on rows between 6 preceding and current row)/7,2) as avg_amount,
lag(visited_on,6) over (order by visited_on) as prev
from cte) d where d.prev is not NULL
order by visited_on asc;

-- create [Q.68]
create table scores(
player_name varchar(30),
gender varchar(30),
day date,
score_points int,
primary key (gender,day));

-- insert into scores

insert into scores values('Aron', 'F', '2020-01-01', 17);
insert into scores values('Alice', 'F', '2020-01-07', 23);
insert into scores values('Bajrang', 'M', '2020-01-07', 7);
insert into scores values('Khali', 'M', '2019-12-25', 11);
insert into scores values('Slaman', 'M', '2019-12-30', 13);
insert into scores values('Joe', 'M', '2019-12-31', 3);
insert into scores values('Jose', 'M', '2019-12-18', 2);
insert into scores values('Priya', 'F','2019-12-31', 23);
insert into scores values('Priyanka', 'F', '2019-12-30', 17);


-- Q68.Write an SQL query to find the total score for each gender on each day.
-- Return the result table ordered by gender and day in ascending order.

select gender,day,sum(score_points) over(partition by gender order by day) as total 
from scores
order by gender,day;

-- create [Q.69]
create table logs(
log_id int,
primary key(log_id));

-- insert into logs
insert into logs values(1);
insert into logs values(2);
insert into logs values(3);
insert into logs values(7);
insert into logs values(8);
insert into logs values(10);


-- Q69.Write an SQL query to find the start and end number of continuous ranges in the table Logs.
-- Return the result table ordered by start_id.
with cte as(
select log_id,log_id-row_number() over(order by log_id) as ind from logs)
select min(log_id)as start,max(log_id) as end from cte group by ind
;

-- create [Q.70]
create table students(
student_id int,
student_name varchar(30),
primary key(student_id));

create table subjects(
subject_name varchar(30),
primary key(subject_name));

create table examinations(
student_id int,
subject_name varchar(30)
);

-- insert into students
insert into students values(1, 'Alice');
insert into students values(2, 'Bob');
insert into students values(13, 'John');
insert into students values(6, 'Alex');
-- insert into subjects
insert into subjects values('Math');
insert into subjects values( 'Physics');
insert into subjects values('Programming');

-- insert into examinations
insert into examinations values(1, 'Math');
insert into examinations values(1, 'Physics');
insert into examinations values(1, 'Programming');
insert into examinations values(2, 'Programming');
insert into examinations values(1, 'Physics');
insert into examinations values(1, 'Math');
insert into examinations values(13, 'Math');
insert into examinations values(13, 'Programming');
insert into examinations values(13, 'Physics');
insert into examinations values(2, 'Math');
insert into examinations values(1, 'Math');

-- Q70.Write an SQL query to find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.

with 
student_subject as (
SELECT student_id,student_name,subject_name FROM Students cross join Subjects
ORDER BY student_id), 

student_exam as (
SELECT student_id,subject_name,COUNT(*) as attended_exams FROM Examinations
GROUP BY 1, 2 
ORDER BY 1
) 

SELECT ss.student_id,ss.student_name,ss.subject_name,IFNULL(se.attended_exams,0) as attended_exams
FROM student_subject as ss LEFT JOIN student_exam as se
ON ss.student_id = se.student_id
AND ss.subject_name = se.subject_name
ORDER BY 1, 3;

-- create [Q.71]

create table employee(
employee_id int,
employee_name varchar(30),
manager_id int,
primary key(employee_id));

-- insert into employee_id
insert into employee values(1, 'Boss', 1);
insert into employee values(3, 'Alice', 3);
insert into employee values(2, 'Bob', 1);
insert into employee values(4, 'Daniel', 2);
insert into employee values(7, 'Luis', 4);
insert into employee values(8, 'Jhon', 3);
insert into employee values(9, 'Angela', 8);
insert into employee values(77, 'Robert', 1);

-- Q.71 Write an SQL query to find employee_id of all employees that directly or indirectly report their work to
-- the head of the company.The indirect relation between managers will not exceed three managers as the company is small.
-- Return the result table in any order

with cte as(
select e.employee_Id as employee_id ,e.manager_Id as manager_id,m.manager_id as senior_manager,sm.manager_id as head_manager
from employee e inner join employee m
on e.manager_id=m.employee_id inner join employee sm
on m.manager_id=sm.employee_id inner join employee ssm 
on sm.manager_id=ssm.employee_id
)
select employee_Id from cte
where employee_id <> manager_id and 
(manager_id=1 or senior_manager=1 or head_manager=1);

-- create [Q.72]

create table transactions(
id int,
country varchar(30),
state enum ("approved", "declined"),
amount int,
trans_date date,
primary key(id));

-- insert into transactions
insert into transactions values(121, 'US' ,'approved', 1000, '2018-12-18');
insert into transactions values(122, 'US' ,'declined', 2000, '2018-12-19');
insert into transactions values(123, 'US' ,'approved', 2000, '2019-01-01');
insert into transactions values(124, 'DE' ,'approved', 2000, '2019-01-07');


-- Q72.Write an SQL query to find for each month and country, the number of transactions and their total
-- amount, the number of approved transactions and their total amount. Return the result table in any order.

with cte as(
select date_format(trans_date,'%Y-%m') as date,country,state,amount,
case when state='declined' then 0 else amount end  as amount_val,
case when state='declined' then 0 else 1 end  as approved_count
from transactions)
select date as month,country,count(*) as trans_count,
sum(approved_count) as approved_count,
sum(amount) as trans_total_amount,
sum(amount_val) as approved_total_amount from cte
group by date,country;

-- create [Q.73]
create table actions(
user_id int,
post_id int,
action_date date,
action enum('view', 'like', 'reaction', 'comment', 'report', 'share'),
extra varchar(30)
);
create table removals(
post_id int,
remove_date date,
primary key(post_id));


-- insert into actions

insert into actions values(1, 1, '2019-07-01' ,'view', null);
insert into actions values(1, 1, '2019-07-01' ,'like', null);
insert into actions values(1, 1, '2019-07-01' ,'share', null);
insert into actions values(2, 2, '2019-07-04' ,'view', null);
insert into actions values(2, 2, '2019-07-04' ,'report', 'spam');
insert into actions values(3, 4, '2019-07-04' ,'view', null);
insert into actions values(3, 4, '2019-07-04' ,'report', 'spam');
insert into actions values(4, 3, '2019-07-02' ,'view', null);
insert into actions values(4, 3, '2019-07-02' ,'report', 'spam');
insert into actions values(5, 2, '2019-07-03' ,'view', null);
insert into actions values(5, 2, '2019-07-03' ,'report', 'racism');
insert into actions values(5, 5, '2019-07-03' ,'view', null);
insert into actions values(5, 5, '2019-07-03' ,'report', 'racism');

-- insert into removals
insert into removals values(2, '2019-07-20');
insert into removals values(3, '2019-07-18');

-- Q73.Write an SQL query to find the average daily percentage of posts that got removed after being
-- reported as spam, rounded to 2 decimal places.


with cte as(
select a.action_date,
count(case when action='report' and extra='spam' then 1 else null end) as spam_count,
count(case when action='report' and extra='spam' and remove_date is not null then 1 else null end) as del_count 
from actions a left join removals r
on a.post_id=r.post_id
group by action_date
)
select round(avg(daily_del_avg)) as average_daily_percent from(
select action_date,round((100.0*del_count/spam_count),2) as daily_del_avg
from cte)a
where daily_del_avg is not null;

-- Q74.Write an SQL query to report the fraction of players that logged in again on the day after the day they
-- first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
-- that logged in for at least two consecutive days starting from their first login date, then divide that
-- number by the total number of players.

-- Q74. and Q75. are same and also repeated previously


-- create [Q.76]

create table salaries(
company_id int,
employee_id int,
employee_name varchar(30),
salary int,
primary key(company_id, employee_id));


-- insert into salaries
insert into salaries values(1, 1, 'Tony', 2000);
insert into salaries values(1, 2, 'Pronub', 21300);
insert into salaries values(1, 3, 'Tyrrox', 10800);
insert into salaries values(2, 1, 'Pam', 300);
insert into salaries values(2, 7, 'Bassem', 450);
insert into salaries values(2, 9, 'Hermione', 700);
insert into salaries values(3, 7, 'Bocaben', 100);
insert into salaries values(3, 2, 'Ognjen', 2200);
insert into salaries values(3, 13, 'Nyan Cat', 3300);
insert into salaries values(3, 15, 'Morning Cat', 7777);

-- Q76.Write an SQL query to find the salaries of the employees after applying taxes. Round the salary to the
-- nearest integer.
-- The tax rate is calculated for each company based on the following criteria:
-- 0% If the max salary of any employee in the company is less than $1000.
-- 24% If the max salary of any employee in the company is in the range [1000, 10000] inclusive.
-- 49% If the max salary of any employee in the company is greater than $10000.
-- Return the result table in any order.
with cte as(
select company_id ,max(salary) as max_salary from salaries
group by company_id)
Select S.company_id,S.employee_id,S.employee_name,
case
when C.max_salary<1000 then S.salary
when C.max_salary between 1000 and 10000 then round(S.salary * 0.76)
when C.max_salary >10000 then round(S.salary*0.51)
end
as salary
from salaries S inner join cte C on S.company_id=C.company_id;


-- create [Q.77]

create table variables(
name varchar(30),
value int,
primary key(name));

create table expressions(
left_operand varchar(15),
operator enum('<', '>', '='),
right_operand varchar(30),
primary key(left_operand, operator, right_operand) );
 -- insert into variables
insert into variables values('x',66);
insert into variables values('y',77);

-- insert into expressions
insert into expressions values('x' ,'>' ,'y');
insert into expressions values('x' ,'<' ,'y');
insert into expressions values('x' ,'=' ,'y');
insert into expressions values('y' ,'>' ,'x');
insert into expressions values('y' ,'<' ,'x');
insert into expressions values('x' ,'=' ,'x');

-- Q77.Write an SQL query to evaluate the boolean expressions in Expressions table.
-- Return the result table in any order


with cte as(
select name,
case when name like'x%' then value end as 'x_val',
case when name like 'y%' then value end as 'y_val'
from variables),
        
cte2 as(
select left_operand,operator,right_operand,max(x_val) as x_val,max(y_val) as y_val
from cte v inner join expressions e
on v.name=e.left_operand or v.name=e.right_operand
group by left_operand,operator,right_operand)


select left_operand,operator,right_operand,
case when left_operand='x' and right_operand='y' and operator='<' and x_val<y_val then 'true'
when left_operand='x' and right_operand='y' and operator='>' and x_val>y_val then 'true'
when left_operand='x' and right_operand='x' and operator='='  and x_val=x_val then 'true' 
when left_operand='x' and right_operand='y' and operator='='  and x_val=y_val then 'true' 
when left_operand='y' and right_operand='x' and operator='<' and y_val<x_val then 'true'
when left_operand='y' and right_operand='x' and operator='>' and y_val>x_val then 'true'
when left_operand='y' and right_operand='y' and operator='='  and y_val=y_val then 'true' 
when left_operand='y' and right_operand='x' and operator='='  and x_val=y_val then 'true'
else 'false' end as value
from cte2;

-- create [Q.78]  [REPEATED  Same as [Q. 55] ]

-- create [Q.79]

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


-- Q79.Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in
-- alphabetical order.

select name from employee order by name;


-- create [Q.80]

create table user_transaction(
transaction_id int,
product_id int,
spend float,
transaction_date datetime);

-- insert into transaction

insert into user_transaction values(1341, 123424, 1500.60, str_to_date('12312019120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1423, 123424, 1000.20, str_to_date('12312020120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1623, 123424, 1246.44, str_to_date('12312021120000','%m%d%Y%h%i%s'));
insert into user_transaction values(1322, 123424, 2145.32, str_to_date('12312022120000','%m%d%Y%h%i%s'));


-- Q80.Assume you are given the table below containing information on user transactions for particular
-- products. Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.
-- Output the year (in ascending order) partitioned by product id, current year's spend, previous year's
-- spend and year-on-year growth rate (percentage rounded to 2 decimal places).

with cte as(
select extract(year from transaction_date) as year,product_id,spend as curr_year_spend,
round(lag(spend) over(PARTITION BY product_id order by extract(year from transaction_date)),2)
as prev_year_spend
from user_transaction)
select * ,
case when prev_year_spend is not null then round(((curr_year_spend-prev_year_spend)/prev_year_spend*100),2)
else prev_year_spend end as yoy_rate
from cte ;


-- create [Q.81]

create table inventory(
item_id int,
item_type varchar(30),
item_category varchar(30),
square_footage float);

-- insert into inventory
insert into inventory values(1374 ,'prime_eligible', 'mini refrigerator' ,68.00);
insert into inventory values(4245 ,'not_prime', 'standing lamp' ,26.40);
insert into inventory values(2452 ,'prime_eligible', 'television' ,85.00);
insert into inventory values(3255 ,'not_prime side', 'table' ,22.60);
insert into inventory values(1672 ,'prime_eligible', 'laptop' ,8.50);


-- Q81.Write a SQL query to find the number of prime and non-prime items that can be stored in the 500,000
-- square feet warehouse. Output the item type and number of items to be stocked.

SELECT item_type,
(
CASE WHEN item_type = 'prime_eligible' 
THEN floor(500000/total_square_footage) * total_item_type
ELSE floor(((500000) - (floor(500000/(SELECT SUM(square_footage) FROM inventory 
WHERE item_type = 'prime_eligible'))* 
(SELECT SUM(square_footage) FROM inventory 
WHERE item_type = 'prime_eligible')))/(total_square_footage))* total_item_type END) 
AS item_count   

FROM

(SELECT item_type,
COUNT(item_type) AS total_item_type,
SUM(square_footage) AS total_square_footage
FROM inventory
GROUP BY item_type) AS temp_table1       

ORDER BY item_count DESC;

-- create [Q.82]

create table user_actions(
user_id int,
event_id int,
event_type enum("sign-in", "like", "comment"),
event_date datetime);

-- insert into actions

insert into user_actions values(445, 7765, 'sign-in', str_to_date('05312022120000','%m%d%Y%h%i%s'));
insert into user_actions values(742, 6458, 'sign-in', str_to_date('06032022120000','%m%d%Y%h%i%s'));
insert into user_actions values(445, 3634, 'like', str_to_date('06052022120000','%m%d%Y%h%i%s'));
insert into user_actions values(742, 1374, 'comment', str_to_date('06052022120000','%m%d%Y%h%i%s'));
insert into user_actions values(648, 3124, 'like', str_to_date('06182022120000','%m%d%Y%h%i%s'));

-- Q82.Assume you have the table below containing information on Facebook user actions. Write a query to
-- obtain the active user retention in July 2022. Output the month (in numerical format 1, 2, 3) and the
-- number of monthly active users (MAUs)

WITH CTE AS
(
SELECT 
user_id,event_date,
EXTRACT(MONTH FROM event_date) - LAG(EXTRact(MONTH FROM event_date)) OVER(partition by user_id order by event_date) as month_number 
FROM user_actions
) 
SELECT
Extract(month FROM event_date) as month,COUNT(*) as monthly_active_users FROM CTE
WHERE month_number = 1
GROUP by 1
ORDER BY 2 desc
LIMIT 1;

-- create [Q.83]
create table search_frequency(
searches int,
num_users int);

insert into search_frequency values(1,2);
insert into search_frequency values(2,2);
insert into search_frequency values(3,3);
insert into search_frequency values(4,1);

-- Q83.Write a query to report the median of searches made by a user. Round the median to one decimal
-- point.
-- Hint- Write a subquery or common table expression (CTE) to generate a series of data (that's keyword
-- for column) starting at the first search and ending at some point with an optional incremental value.

select * from search_frequency;

with cte as(
select searches from search_frequency
group by searches,generate_series(1,num_users)
)
select round(percentile_cont(0.5) within group(order by searches)::decimal,1) as median
from search_frequency;

-- create [Q.84]

create table advertiser(
user_id varchar(30),
status varchar(30));

create table daily_pay(
user_id varchar(15),
paid float);

-- insert into advertiser
insert into advertiser values('bing', 'NEW');
insert into advertiser values('yahoo', 'NEW');
insert into advertiser values('alibaba', 'EXISTING');
-- insert into daily_pay
insert into daily_pay values('yahoo',45.00);
insert into daily_pay values('alibaba', 100.00);
insert into daily_pay values('target', 13.00);

-- Q84.Write a query to update the Facebook advertiser's status using the daily_pay table. Advertiser is a
-- two-column table containing the user id and their payment status based on the last payment and
-- daily_pay table has current information about their payment. Only advertisers who paid will show up in
-- this table.


WITH payment_status AS (
SELECT advertiser.user_id,advertiser.status,payment.paid FROM advertiser
LEFT JOIN daily_pay AS payment
ON advertiser.user_id = payment.user_id

UNION

SELECT payment.user_id,advertiser.status,payment.paid
FROM daily_pay AS payment
LEFT JOIN advertiser
ON advertiser.user_id = payment.user_id
)

SELECT user_id,

CASE WHEN paid IS NULL THEN 'CHURN'
WHEN status != 'CHURN' AND paid IS NOT NULL THEN 'EXISTING'
WHEN status = 'CHURN' AND paid IS NOT NULL THEN 'RESURRECT'
WHEN status IS NULL THEN 'NEW'
END AS new_status

FROM payment_status
ORDER BY user_id;

-- create [Q.85]

create table server_utilization(
server_id int,
status_time timestamp,
session_status varchar(30));

-- insert into server_utilization


insert into server_utilization values(1,str_to_date('08/02/2022 10:00:00','%m/%d/%Y %h:%i:%s'),'start');
insert into server_utilization values(1,str_to_date('08/04/2022 10:00:00','%m/%d/%Y %h:%i:%s'),'stop');
insert into server_utilization values(2,str_to_date('08/17/2022 10:00:00','%m/%d/%Y %h:%i:%s'),'start');
insert into server_utilization values(2,str_to_date('08/24/2022 10:00:00','%m/%d/%Y %h:%i:%s'),'stop');

select * from server_utilization;


-- Q85. Amazon Web Services (AWS) is powered by fleets of servers. Senior management has
-- requested data-driven solutions to optimise server usage.
-- Write a query that calculates the total time that the fleet of servers was running. The output should be
-- in units of full days.
-- Level - Hard
-- Hint1. Calculate individual uptimes


with cte as(
select server_id,status_time,
case when session_status='stop' then  lag(status_time) over(partition by server_id order by status_time) 
 end as prev_time
 from server_utilization
 )
 select round(sum(running_time)/86400) as total_uptime_days from(
 select server_id,sum(timestampdiff(second,prev_time,status_time)) running_time
 from cte
 where prev_time is not null
 group by server_id)a;



-- create [Q.86]

create table transactions(
transaction_id int,
merchant_Id int,
credit_card_id int,
amount int,
transaction_timestamp datetime);

-- insert into transactions


insert into transactions values(1, 101, 1, 100, str_to_date('09/25/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(2, 101, 1, 100, str_to_date('09/25/2022 12:08:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(3, 101, 1, 100, str_to_date('09/25/2022 12:28:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(4, 102, 2, 300, str_to_date('09/25/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into transactions values(6, 102, 2, 400, str_to_date('09/25/2022 14:00:00','%m/%d/%Y %H:%i:%s'));


select * from transactions;

-- Q86.Sometimes, payment transactions are repeated by accident; it could be due to user error, API failure or
-- a retry error that causes a credit card to be charged twice.
-- Using the transactions table, identify any payments made at the same merchant with the same credit
-- card for the same amount within 10 minutes of each other. Count such repeated payments


select count(t1.transaction_id) as payment_count
from transactions t1 inner join transactions t2 
on t1.merchant_id=t2.merchant_id and t1.credit_card_id=t2.credit_card_id and t1.amount=t2.amount
and t2.transaction_timestamp>t1.transaction_timestamp
where timestampdiff(minute,t1.transaction_timestamp,t2.transaction_timestamp)<10;


-- create [Q.87]

create table orders(
order_id int,
customer_id int,
trip_id int,
status enum('completed successfully', 'completed incorrectly', 'never received'),
order_timestamp timestamp);
create table trips(
dasher_id int,
trip_id int,
estimated_delivery_timestamp timestamp,
actual_delivery_timestamp timestamp);

create table customer(
customer_id int,
signup_timestamp timestamp);

-- insert into orders

insert into orders values (727424, 8472, 100463, 'completed successfully'  ,str_to_date('06/05/2022 09:12:00','%m/%d/%Y %H:%i:%s'));
insert into orders values (242513, 2341, 100482, 'completed incorrectly'  ,str_to_date('06/05/2022 14:40:00','%m/%d/%Y %H:%i:%s'));
insert into orders values (141367, 1314, 100362, 'completed incorrectly'  ,str_to_date('06/07/2022 15:03:00','%m/%d/%Y %H:%i:%s'));
insert into orders values (582193, 5421, 100657, 'never received'  ,str_to_date('07/07/2022 15:22:00','%m/%d/%Y %H:%i:%s'));
insert into orders values (253613, 1314, 100213, 'completed successfully'  ,str_to_date('06/12/2022 13:43:00','%m/%d/%Y %H:%i:%s'));


-- insert into trips
insert into trips values(101, 100463 ,str_to_date('06/05/2022 09:42:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/05/2022 09:38:00','%m/%d/%Y %H:%i:%s'));
insert into trips values(102, 100482 ,str_to_date('06/05/2022 15:10:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/05/2022 15:46:00','%m/%d/%Y %H:%i:%s'));
insert into trips values(101, 100362 ,str_to_date('06/07/2022 15:33:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/07/2022 16:45:00','%m/%d/%Y %H:%i:%s'));
insert into trips values(102, 100657 ,str_to_date('07/07/2022 15:52:00','%m/%d/%Y %H:%i:%s') ,NULL);
insert into trips values(103, 100213 ,str_to_date('06/12/2022 14:13:00','%m/%d/%Y %H:%i:%s') ,str_to_date('06/12/2022 14:10:00','%m/%d/%Y %H:%i:%s'));
-- insert into customer
insert into customer values(8472 ,str_to_date('05/30/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into customer values(2341 ,str_to_date('06/01/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into customer values(1314 ,str_to_date('06/03/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into customer values(1435 ,str_to_date('06/05/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into customer values(5421 ,str_to_date('06/07/2022 00:00:00','%m/%d/%Y %H:%i:%s'));



-- Q87.Write a query to find the bad experience rate in the first 14 days for new users who signed up in June
-- 2022. Output the percentage of bad experience rounded to 2 decimal places.

select * from orders;
select * from customer;
select * from trips;
with cte as(
select o.customer_id,o.status,c.signup_timestamp,o.order_timestamp
from orders o inner join  trips t on o.trip_id=t.trip_id 
inner join customer c on c.customer_id=o.customer_id
where extract(year from c.signup_timestamp)=2022 and month(c.signup_timestamp)=6 and datediff(o.order_timestamp,c.signup_timestamp)<=14
)
select round((100.0*count(case when status in('completed incorrectly','never received') then 1 else null end)/count(customer_id)),2)
as bad_experience_pct
from cte;

-- create [Q.88]

create table scores(
player_name varchar(30),
gender varchar(30),
day date,
score_points int,
primary key (gender,day));

-- insert into scores

insert into scores values('Aron' ,'F', '2020-01-01', 17);
insert into scores values('Alice', 'F' ,'2020-01-07' ,23);
insert into scores values('Bajrang', 'M', '2020-01-07', 7);
insert into scores values('Khali' ,'M', '2019-12-25' ,11);
insert into scores values('Slaman' ,'M', '2019-12-30' ,13);
insert into scores values('Joe' ,'M', '2019-12-31' ,3);
insert into scores values('Jose' ,'M', '2019-12-18', 2);
insert into scores values('Priya' ,'F' ,'2019-12-31' ,23);
insert into scores values('Priyanka', 'F' ,'2019-12-30', 17);


select * from scores;

-- Q88.Write an SQL query to find the total score for each gender on each day.
-- Return the result table ordered by gender and day in ascending order.
select gender,day,sum(score_points) over(partition by gender order by day) as total 
from scores
order by gender;


-- Q89 Repeated as Q.55
-- Q90 Repeated as Q.93

-- create [Q.91]

create table employee(
employee_id int,
department_id int,
primary key(employee_id));


create table salary(
id int,
employee_Id int,
amount int,
pay_date date,
primary key(id),
foreign key(employee_id) references employee(employee_id));


-- insert into employee
insert into employee values(1, 1);
insert into employee values(2, 2);
insert into employee values(3, 2);

-- insert into salary

insert into salary values(1, 1, 9000, '2017/03/31');
insert into salary values(2, 2, 6000, '2017/03/31');
insert into salary values(3, 3, 10000,'2017/03/31');
insert into salary values(4, 1, 7000, '2017/02/28');
insert into salary values(5, 2, 6000, '2017/02/28');
insert into salary values(6, 3, 8000, '2017/02/28');

-- Q91.Write an SQL query to report the comparison result (higher/lower/same) of the average salary of
-- employees in a department to the company's average salary.
-- Return the result table in any order.
select * from salary;
select * from employee;


with cte1 as(
select s.pay_date,round(avg(amount),2) as comp_avg_month
from salary s inner join employee e
on s.employee_id=e.employee_id
group by month(pay_date)),
cte2 as (
select e.department_id,s.pay_date,round(avg(amount),2) as avg_month
from salary s inner join employee e
on s.employee_id=e.employee_id
group by e.department_id,s.pay_date)

select date_format(c2.pay_date,'%Y-%m') as pay_month,c2.department_id,
case when c2.avg_month>c1.comp_avg_month then 'higher'
when c2.avg_month<c1.comp_avg_month then 'lower'
else 'same' end as comparison
from
cte1 c1 left join cte2 c2 
on c1.pay_date=c2.pay_date
order by department_id,month(c2.pay_date);

-- create [Q.92]

create table activity(
player_id int,
device_id int,
event_date date,
games_played int,
primary key(player_id, event_date));

-- insert into activity

insert into activity values(1, 2, '2016-03-01' ,5);
insert into activity values(1, 2, '2016-03-02' ,6);
insert into activity values(2, 3, '2017-06-25' ,1);
insert into activity values(3, 1, '2016-03-01' ,0);
insert into activity values(3, 4, '2016-07-03' ,5);

select * from activity;

-- Q92.Write an SQL query to report for each install date, the number of players that installed the game on
-- that day, and the day one retention.
-- Return the result table in any order.
with cte as(
select player_id,event_date as curr_date,lead(event_date) over(partition by player_id order by event_date) as next_date
from activity
),cte1 as(
select distinct(player_id),curr_date,
case when datediff(next_date,curr_date)= 1 then 1 else 0 end as chk
from cte
group by player_id)
select curr_date as install_dt,count(player_id) as installs,round((sum(chk)/count(chk)),1)as retention_rate
from cte1
group by curr_Date;

-- create [Q.93]

create table players(
player_id int,
group_id int,
primary key(player_id));

create table matches(
match_id int,
first_player int,
second_player int,
first_score int,
second_score int,
primary key(match_id));

-- insert into players
insert into players values(15, 1);
insert into players values(25, 1);
insert into players values(30, 1);
insert into players values(45, 1);
insert into players values(10, 2);
insert into players values(35, 2);
insert into players values(50, 2);
insert into players values(20, 3);
insert into players values(40, 3);
-- insert into matches
insert into matches values(1, 15 ,45, 3, 0);
insert into matches values(2, 30 ,25, 1, 2);
insert into matches values(3, 30 ,15, 2, 0);
insert into matches values(4, 40 ,20, 5, 2);
insert into matches values(5, 35, 50, 1, 1);

-- Q.93The winner in each group is the player who scored the maximum total points within the group. In the
-- case of a tie, the lowest player_id wins.
-- Write an SQL query to find the winner in each group.
-- Return the result table in any order.

select * from players;
select * from matches;
with cte as(
select m.first_player as player,m.first_score as score,p.group_id
from matches m inner join players p on m.first_player=p.player_id
union all
select m.second_player as player,m.second_score as score,p.group_id
from matches m inner join players p on m.second_player=p.player_id
),
cte2 as(
select group_id,player,sum(score)as total_score
from cte group by group_id,player
)select group_id,player as player_id from(
select group_id,player,rank() over(partition by group_Id order by total_score desc ,player)as rn
from cte2)a
where rn=1;

-- create [Q.94]

create table student(
student_id int,
student_name varchar(30),
primary key(student_id));

create table exam(
exam_id int,
student_id int,
score int,
primary key(exam_id, student_id));

-- insert into student 
insert into student values(1 ,'Daniel');
insert into student values(2 ,'Jade');
insert into student values(3 ,'Stella');
insert into student values(4 ,'Jonathan');
insert into student values(5 ,'Wil');
-- insert intno exam
insert into exam values(10, 1, 70);
insert into exam values(10, 2, 80);
insert into exam values(10, 3, 90);
insert into exam values(20, 1, 80);
insert into exam values(30, 1, 70);
insert into exam values(30, 3, 80);
insert into exam values(30, 4, 90);
insert into exam values(40, 1, 60);
insert into exam values(40, 2, 70);
insert into exam values(40, 4, 80);

-- Q94.A quiet student is the one who took at least one exam and did not score the high or the low score.
-- Write an SQL query to report the students (student_id, student_name) being quiet in all exams. Do not
-- return the student who has never taken any exam.Return the result table ordered by student_id.

select * from student;
select * from exam;

with cte1 as(
select exam_id,max(score) as max_score,min(score) as min_score
from exam group by exam_id
),cte2 as(
select distinct e.student_id,s.student_name,e.exam_id,e.score,c.min_score ,c.max_score
from exam e left join student s
on e.student_id=s.student_id left join cte1 c on c.exam_id=e.exam_id
)
select student_id,student_name
from cte2 c where score <>min_score and score<>max_score
group by student_id having count(student_id)=(select count(student_id) from exam where c.student_id=student_id group by student_id)

-- create [Q.95]  [Repeated as Q.94]

-- create [Q.96]

create table song_history(
history_id int,
user_id int,
song_id int,
song_plays int);

create table songs_weekly(
user_id int,
song_id int,
listen_time datetime);

-- insert into songs_history
insert into song_history values(10011, 777, 1238, 11);
insert into song_history values(12452, 695, 4520, 1);
-- insert into songs_weekly

insert into songs_weekly values(777, 1238, str_to_date('08/01/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into songs_weekly values(695, 4520, str_to_date('08/04/2022 08:00:00','%m/%d/%Y %H:%i:%s'));
insert into songs_weekly values(125, 9630, str_to_date('08/04/2022 16:00:00','%m/%d/%Y %H:%i:%s'));
insert into songs_weekly values(695, 9852, str_to_date('08/07/2022 12:00:00','%m/%d/%Y %H:%i:%s'));

-- Q96.You're given two tables on Spotify users' streaming data. songs_history table contains the historical
-- streaming data and songs_weekly table contains the current week's streaming data.
-- Write a query to output the user id, song id, and cumulative count of song plays as of 4 August 2022 sorted in descending order.

select user_id,song_id,sum(song_plays) as song_plays from(
select user_id,song_id,song_plays from 
song_history union all
select user_id,song_id,count(song_id) as song_plays
from songs_weekly
where listen_time<='2022-08-04 23:59:59'
GROUP BY user_id,song_id)report
group by user_id,song_id
order by song_plays desc;

-- create [Q.97]

create table emails(
email_id int,
user_id int,
signup_date datetime);

create table texts(
text_id int,
email_id int,
signup_action varchar(30));

-- insert into emails

insert into emails values (125, 7771, str_to_date('06/14/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into emails values(236, 6950, str_to_date('07/01/2022 00:00:00','%m/%d/%Y %H:%i:%s'));
insert into emails values(433, 1052, str_to_date('07/09/2022 00:00:00','%m/%d/%Y %H:%i:%s'));

-- insert into texts
insert into texts values(6878, 125, 'Confirmed');
insert into texts values(6920, 236, 'Not Confirmed');
insert into texts values(6994, 236, 'Confirmed');

-- Q97.New TikTok users sign up with their emails, so each signup requires a text confirmation to activate the
-- new user's account.
-- Write a query to find the confirmation rate of users who confirmed their signups with text messages.
-- Round the result to 2 decimal places

select * from texts;
select * from emails;

with cte as(
select e.email_id,t.text_id,e.signup_date,t.signup_action
from emails e left join texts t
on e.email_id=t.email_id
group by email_id having text_id=max(text_id) or text_id is null)
select 
round((count(case when signup_action='Confirmed' then 1 else null end)/count(email_id)),2) as confirm_rate
from cte;

-- create [Q.98]

create table tweets(
tweet_id int,
user_id int,
tweet_date timestamp);

-- insert into tweets


insert into tweets values(214252, 111, str_to_date('06/01/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into tweets values(739252, 111, str_to_date('06/01/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into tweets values(846402, 111, str_to_date('06/02/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into tweets values(241425, 254, str_to_date('06/02/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into tweets values(137374, 111, str_to_date('06/04/2022 12:00:00','%m/%d/%Y %H:%i:%s'));


-- Q98. The table below contains information about tweets over a given period of time. Calculate the 3-day
-- rolling average of tweets published by each user for each date that a tweet was posted. Output the
-- user id, tweet date, and rolling averages rounded to 2 decimal places.
-- Hint- Use Count and group by

select * from tweets;

with cte as(
select user_id,tweet_date,count(user_id) as tweet_count
from tweets
group by user_id,tweet_date
)
select user_id,tweet_date,
round(sum(tweet_count) over(partition by user_id order by tweet_date rows between 2 preceding and current row) /
count(user_id) over(partition by user_id order by tweet_date rows between 2 preceding and current row),2) as rolling_avg_3_days
from cte 
order by user_id;

-- create [Q.99]

create table activities(
activity_id int,
user_id int,
activity_type enum ('send', 'open', 'chat'),
time_spent float,
activity_date datetime);

create table age_breakdown(
user_id int,
age_bucket enum('21-25', '26-30', '31-35')
);

-- insert into activities

insert into activities values(7274, 123, 'open' ,4.50 ,str_to_date('06/22/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into activities values(2425, 123, 'send' ,3.50 ,str_to_date('06/22/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into activities values(1413, 456, 'send' ,5.67 ,str_to_date('06/23/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into activities values(1414, 789, 'chat' ,11.00 ,str_to_date('06/25/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
insert into activities values(2536, 456, 'open' ,3.00 ,str_to_date('06/25/2022 12:00:00','%m/%d/%Y %H:%i:%s'));
-- insert into age_breakdown
insert into age_breakdown values(123, '31-35');
insert into age_breakdown values(456, '26-30');
insert into age_breakdown values(789, '21-25');
-- Q99.Assume you are given the tables below containing information on Snapchat users, their ages, and
-- their time spent sending and opening snaps. Write a query to obtain a breakdown of the time spent
-- sending vs. opening snaps (as a percentage of total time spent on these activities) for each age group.

select * from activities;
select * from age_breakdown;

select * from(
select ab.age_bucket,
round(100.0*sum(case when activity_type='send' then time_spent else 0 end)/sum(time_spent),2) as 'send_perc',
round(100.0*sum(case when activity_type='open' then time_spent else 0 end)/sum(time_spent),2) as 'open_perc'
from activities a left join age_breakdown ab
on a.user_id=ab.user_id
group by age_bucket
order by age_bucket)a
where send_perc <> 0 and open_perc <>0;

-- create [Q.100]

create table personal_profiles(
profile_id int,
name varchar(30),
followers int);

create table employee_company(
personal_profile_id int,
company_id int);

create table company_pages(
company_id int,
name varchar(50),
followers int);

-- insert itno personal_profiles
insert into personal_profiles values(1 ,'Nick Singh', 92000);
insert into personal_profiles values(2 ,'Zach Wilson', 199000);
insert into personal_profiles values(3 ,'Daliana Liu', 171000);
insert into personal_profiles values(4 ,'Ravit Jain', 107000);
insert into personal_profiles values(5 ,'Vin Vashishta', 139000);
insert into personal_profiles values(6 ,'Susan Wojcicki', 39000);
-- insert into employee_company
insert into employee_company values(1, 4);
insert into employee_company values(1, 9);
insert into employee_company values(2, 2);
insert into employee_company values (3, 1);
insert into employee_company values(4, 3);
insert into employee_company values(5, 6);
insert into employee_company values(6, 5);
-- insert into company pages
insert into company_pages values(1, 'The Data Science Podcast', 8000);
insert into company_pages values(2, 'Airbnb', 700000);
insert into company_pages values(3, 'The Ravit Show', 6000);
insert into company_pages values(4, 'DataLemur', 200);
insert into company_pages values(5, 'YouTube', 16000000);
insert into company_pages values(6, 'DataScience.Vin', 4500);
insert into company_pages values(9, 'Ace The Data Science Interview', 4479);

-- Q100.The LinkedIn Creator team is looking for power creators who use their personal profile as a company
-- or influencer page. This means that if someone's Linkedin page has more followers than all the
-- companies they work for, we can safely assume that person is a Power Creator. Keep in mind that if a
-- person works at multiple companies, we should take into account the company with the most followers.
-- Write a query to return the IDs of these LinkedIn power creators in ascending order.

select * from personal_profiles;
select * from employee_company;
select * from company_pages;

with cte as(
select ec.personal_profile_id,ec.company_id,cp.name,cp.followers as company_followers
from employee_company ec left join company_pages cp
on ec.company_id=cp.company_id)
select profile_id from personal_profiles p
where followers>(select max(company_followers) from cte where personal_profile_id=p.profile_id group by personal_profile_id)
order by profile_id;