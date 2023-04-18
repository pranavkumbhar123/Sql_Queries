# create employee table copy
select * from employee;
select * from department;
# department of pranav
select * 
from department
where eid =(select eid
			from employee
            where ename ="pranav");

select * from employee
where eid =1;

select * from employee
where experience in (1,3);

select * from employee; 
delete from employee 
where eid=3;
select * from employee;

create table employee_copy
(select * from employee);

select * from employee_copy;
alter table employee_copy
add column companyName varchar(40);
select * from employee_copy;

alter table employee_copy
drop column companyName;

