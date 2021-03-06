---1) Create a Employee table includes columns employee id, employee name,salary,department id,manager_id

create table employee
(emp_id varchar(20),
emp_name varchar(50),
salary integer,
dept_id varchar(20),
manager_id varchar(20)
)

insert into employee values
('E1','Rahul',15000,'D1','M1'),
('E2','Manoj',15000,'D1','M1'),
('E3','James',55000,'D2','M2'),
('E4','Michale',25000,'D10','M2'),
('E5','All',20000,'D10','M3'),
('E6','keshav',35000,'D10','M3')

---2) Create a department table 

create table department
( dept_id varchar(20),
 dept_name varchar(50)
)

insert into department values
('D1','IT'),
('D2','HR'),
('D3','Finance'),
('D4','Admin')	

select * from department

--- create manager table

create table manager
(manager_id varchar(20),
manager_name varchar(50),
dept_id varchar(20)
);

insert into manager values
('M1','Shubham','D3'),
('M2','Shrinath','D4'),
('M3','Sunil','D1'),
('M4','Corey','D1');

-- create projects table 

create table projects
(project_id varchar(20),
project_name varchar(50),
team_member_id varchar(20)
);

insert into projects values
('P1','Data Migration','E1'),
('P1','Data Migration','E2'),
('P1','Data Migration','M3'),
('P2','ETL Tool','E1'),
('P2','ETL Tool','M4');

---View all tables
select * from employee
select * from department
select * from manager
select * from projects

--inner join
--left join
--right join
--full outer join
--self join 
-- Cross join
-- Natutal join
-- left join  = inner join + all values in left table 
-- right join = inner join + all values in right table 

--fetch employee name and thier respective department id
select e.emp_name,d.dept_id 
from employee e inner join department d on e.dept_id=d.dept_id

select e.emp_name, d.dept_id
from employee e right join department d on e.dept_id = d.dept_id

--fetch all employees, their manager ids, their department ids  and their projects

select * from employee
select e.emp_name, e.manager_id , e.dept_id, p.project_name
from employee e left join projects p on e.emp_id = p.team_member_id

-- fetch all employee name, their manager name, their department name and their projects name 

select e.emp_name, d.dept_name, m.manager_name from 
employee e left join department d on e.dept_id = d.dept_id 
inner join manager m on e.manager_id = m.manager_id left join projects p on e.emp_id = p.team_member_id








