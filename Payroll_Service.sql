--UC1 : Ability to create payroll service database
create database payroll_services;
use payroll_services;    --go to the database created by using use payroll_service query

exec sp_databases;   --Show all existing databases in short

select * 
from sys.databases;   --Show all the existing databases in detailed


---UC2 : Ability create a employee payroll table in the payroll service database
CREATE TABLE employee_payroll 
(
   id int identity primary key,
   name varchar(Max) Not null,
   salary money default 1000,
   startDate DateTime default GetDate()
);

-- Drop Table employee_payroll; Drop is used to Delete DB or Table
-- Note:- SQL Queries is case insensitive