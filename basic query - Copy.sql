create database college;

use college;
create table student (
    id int primary key,
    name varchar(50),
    age int NOT NULL
);

INSERT INTO STUDENT VALUES(1, 'PRITESH', 26);
INSERT INTO STUDENT VALUES(2, 'RAHUL', 24);



select * from student;


create database store_db
use store_db


create table customers(
customer_id int identity (100,1) primary key,
customer_name varchar(100) not null,
email varchar(100) unique
);

create table orders(
order_id int identity (500,1) primary key,
order_date date not null,
total_amount decimal(10,2),
customer_id int,
foreign key (customer_id) references customers(customer_id)
);

exec sp_help 'orders'

insert into customers (customer_name ,email)
values ('raju','raju@example.com'),('raj','raj@example.com'),('priya','priya@example.com')



insert into orders (order_date,total_amount,customer_id)
values
('2025-10-15',1500.00,100),
('2025-10-20',500.00,101),
('2025-11-15',1800.00,100),
('2025-11-24',2000.00,102),
('2025-12-10',2500.00,101);

select * from customers
select * from orders

insert into customers(customer_name,email)
values ('rahul','rahul@example.com')

insert into orders (order_date,total_amount)
values ('2025-12-05','2600')

----joins
----crossss
select * from customers cross join orders

select * from customers inner join orders 
on customers.customer_id=orders.customer_id

select c.customer_name,count(o.order_id),SUM(o.total_amount)from customers c inner join  orders o
on 
c .customer_id =o.customer_id 
group by c.customer_name

select * from customers left join orders 
on customers.customer_id=orders.customer_id

select c.customer_name,count(o.order_id),SUM(o.total_amount)from customers c left join  orders o
on 
c .customer_id =o.customer_id 
group by c.customer_name

select c.customer_name,count(o.order_id),SUM(o.total_amount)from customers c right join  orders o
on 
c .customer_id =o.customer_id 
group by c.customer_name

select * from customers right join orders 
on customers.customer_id=orders.customer_id

select * from customers full outer join orders 
on customers.customer_id=orders.customer_id

select 
c.customer_id , c.customer_name,
o.order_id , o.order_date, o.total_amount

from customers as c
outer apply ( select top 1 * from orders as o where o.customer_id = c.customer_id
order by o.order_date desc
) as o

select 
c.customer_id , c.customer_name,
o.order_id , o.order_date, o.total_amount

from customers as c
cross apply ( select top 1 * from orders as o where o.customer_id = c.customer_id
order by o.order_date desc
) as o

create  table companyhierarchy(
emp_id int primary key,
name varchar(100),
managerid int 
);

insert into companyhierarchy(emp_id,name,managerid)
values
(1,'sonia varma',null),
(2,'ram shmrma',1),
(3,'rahul gandhi',2),
(4,'sandhya raj',1),
(5,'sam krishna',2);

select 
    e.name as empname,
    m.name as managername
    from companyhierarchy e

left join companyhierarchy m
on e.managerid=m.emp_id  

-----many to many
create database institute
use institute

create table courses(
  course_id int identity(1,1) primary key,
  course_name varchar(100) not null,
  course_fee numeric(10,2) not null
  );

  insert into  courses(course_name,course_fee)
  values
  ('maths',500),
  ('phy',600),
  ('chem',700);

  create table students(
  student_id int identity(1,1) primary key,
  student_name varchar(100) not null
  );

  insert into students(student_name) values
  ('ramji'),('laxmanji'),('sitaji'),('hanumanji');

  select * from students
  select * from courses

  create table enrollments(
  enrollment_id int identity(1,1) primary key,
  student_id int not null,
  course_id int not null,
  enrollment_date date not null,

  foreign key (student_id) references students(student_id),
  foreign key (course_id) references courses(course_id)
  ); 

  insert into enrollments(student_id,course_id,enrollment_date)
  values
  (1,1,'2025-01-01'),
  (1,2,'2025-01-15'),
  (2,1,'2025-02-01'),
  (2,3,'2025-02-15'),
  (3,3,'2025-03-25')













