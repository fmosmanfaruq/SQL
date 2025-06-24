create database CompanyDB;
show databases;
use CompanyDB;
drop table if exists Employee;
create table Employee(
employee_id INT primary key,
first_name varchar(50),
last_name varchar(50),
age int,
department varchar(50)
);
insert into Employee(employee_id,first_name,last_name,age,department)
values
('1','John','Doe',30,'HR'),
('2','Jane','Smith',25,'IT'),
('3','Alice','Johnson',28,'Marketing'),
('4','Bob','Brown',35,'Finance');

select * from Employee;
select first_name,last_name,department from Employee where age>30;
update Employee
set department ="Sale"
where employee_id = 3;
select * from Employee;
delete from Employee where employee_id = 2;
