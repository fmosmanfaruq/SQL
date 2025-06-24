create database University;
show databases;
use University;
drop table if exists students;
create table students(
student_id int primary key,
name varchar(50),
age int,
gender varchar(50),
department varchar(50),
gpa decimal(3,2)
);
insert into students values
(1, 'Alice', 20, 'Female', 'Computer Science', 3.8), 
(2, 'Bob', 21, 'Male', 'Electrical Engineering', 3.6), 
(3, 'Charlie', 22, 'Male', 'Mechanical Engineering', 3.2), 
(4, 'Diana', 20, 'Female', 'Computer Science', 3.9), 
(5, 'Eve', 23, 'Female', 'Electrical Engineering', 3.7);

select * from students;
drop table if exists courses;
create table courses(
course_id int primary key,
course_name varchar(50),
department varchar(50),
credit int
);
insert into courses values
(101, 'Data Structures', 'Computer Science', 4), 
(102, 'Circuit Analysis', 'Electrical Engineering', 3), 
(103, 'Thermodynamics', 'Mechanical Engineering', 4), 
(104, 'Algorithms', 'Computer Science', 4), 
(105, 'Digital Systems', 'Electrical Engineering', 3);

create table enrollment(
enrollment_id int primary key,
student_id int,
course_id int,
semester varchar(20),
foreign key(student_id)references students (student_id),
foreign key(course_id) references courses(course_id)
);

INSERT INTO enrollment VALUES 
(1, 1, 101, 'Fall 2024'), 
(2, 2, 102, 'Fall 2024'), 
(3, 3, 103, 'Fall 2024'), 
(4, 4, 104, 'Spring 2025'), 
(5, 5, 105, 'Spring 2025');

select *from students;
select *from students where department ='Computer Science'; 
select *from students where gender ="Male" and gpa>3.5;
select *from students order by gpa desc;
select department, count(*)as student_count from students group by department;
select avg(gpa)as average_gpa from students where department = 'Electrical Engineering';

insert into students values(6, 'Udoy', 21, 'Male', 'Computer Science', 3.3);
select * from students;

set SQL_SAFE_UPDATES = 0;

update students
set gpa=3.95
where name ='Alice';

delete from students where age>25;

update students
set department ='Software Engineering'
where department ='Computer Science';

insert into courses values (110, 'Machine Learning', 'Computer Science', 4);

select * from courses;

update courses 
set credit =5
where course_name ='Data Structure';

delete from enrollment where semester ='Fall 2024';

select * from courses order by credit desc; 

alter table students
add constraint gpa_check check(gpa<=4.0);

select * from courses;


