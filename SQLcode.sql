-- Creating Table StudentDetails

create table StudentDetails(
id int NOT NULL,
firstname varchar(20) default Null,
lastname varchar(20) default NULL,
username varchar(250) default NULL,
password varchar(20) default NULL,
address varchar(45) default NULL,
contact varchar(45) default NULL,
course varchar(100) default NULL,
primary key (id));

desc StudentDetails;

-- Insert into StudentDetails
insert into StudentDetails values(6,'viraj','kohli','vk1234','vk1234','pune','email');


-- Display StudentDetails Table
select * from StudentDetails;

-- Function to get maximum Id

CREATE OR REPLACE FUNCTION getId         
            RETURN employee.id%TYPE IS    
           emp_id employee.id%TYPE; 
 BEGIN    
    SELECT id INTO emp_id from employee    where id = (Select MAX(id) from employee);      
    RETURN emp_id; 
 END;

-- Fetch maximum ID
select getId from employee;

--Create Admin Table
Create table admin(id int NOT NULL,
username varchar2(50),password varchar2(50),primary key(id));

-- Insert Into Admin Table
Insert into admin values(1,'admin','admin123');

-- Display Admin table
select * from admin;

-- Create table Course
create table course ( course_id number primary key, c_name varchar2(100),c_desp varchar2(100), c_fees varchar2(100));

-- Insert data in Course Table
insert into course values (111,'JAVA','Programing language',299);
insert into course values (112,'C Programming','Programming language',199);
insert into course values (113,'C++ Programming','Programming language',199);

-- Display Course table data
Select * from course;
