CREATE DATABASE VarsityDB;
SHOW DATABASES;
USE VarsityDB;
DROP TABLE IF EXISTS StudentList;
CREATE TABLE StudentList (
    Student_id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);
INSERT INTO StudentList (Student_id, First_name, Last_name, Age, Gender)
VALUES
    (1, 'Osman', 'Faruq', 12,'M'),
    (3,"Lional","MESSI",38,'M'),
    (2, 'Faruqi', 'Osmani', 23,'F');
SELECT * FROM StudentList WHERE age>18;
select First_name, Gender FROM StudentList where Gender ="M";

update StudentList
set age =21
where Student_id = 1;
SELECT * FROM StudentList;

delete from StudentList where Student_id = 2;
