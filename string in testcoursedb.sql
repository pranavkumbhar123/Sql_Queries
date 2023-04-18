use testcoursedb;
alter table employees
add column gender varchar(20) after last_name;
select * from employees;
select if(gender like"M",concat("Mr.", first_name),concat("Mrs.",first_name)) as firstname
from employees;

select * from employees;

update employees 
set first_name = upper(first_name);

# Title case
select concat(upper(substr(first_name,1,1)),lower(substr(first_name,2,length(first_name)))) as TitleName
from employees;

use studentdb1;

# replace

select * from faculty;

alter table faculty
add column lname varchar(50)
after fname;

update faculty
set lname= replace(lname, "Gupta","Aggarwal");

# group concat

# All the employees working in a deptid

use testcoursedb2;

select DEPARTMENT_ID, group_concat(FIRST_NAME," ") as EmployeeNames
from employees
group by DEPARTMENT_ID;

select DEPARTMENT_ID, group_concat(EMPLOYEE_ID," ") as EmployeeId
from employees
group by DEPARTMENT_ID;

select strcmp("Java","Python");

select strcmp("Java","Java");

#find in set

select find_in_set("Java","Java,HTML,Python");

select find_in_set("html","Java,HTML,Python");

select find_in_set("Go","Java,HTML,Python");







