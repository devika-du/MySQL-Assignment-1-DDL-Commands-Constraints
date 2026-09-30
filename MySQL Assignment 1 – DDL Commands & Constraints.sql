create Database Employee;
use employee;
create table Departments(department_id int, department_name varchar(100));
create table Location(location_id int, location varchar(30));
create table employees(employee_id int, employee_name varchar(50), gender enum('M', 'F'), age int, hire_date date, designation varchar(100), department_id int, location_id int, salary decimal(10.2));
alter table employees add column email varchar(100);
alter table employees modify column designation varchar(200);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joinning;
rename table Departments to Departments_info;
rename table location to locations;
truncate table employees;
drop table employees;
drop database employee;
create database employee;
use employee;
create table Departments(department_id int auto_increment primary key, department_name varchar(100) not null unique);
create table locations(location_id int auto_increment primary key, location varchar(30) not null unique);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);
select * from employees;
describe table employees;
