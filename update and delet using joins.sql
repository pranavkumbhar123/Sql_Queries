use testcoursedb;
update employees e join departments d
on e.DEPARTMENT_ID = D.DEPARTMENT_ID 
set e.salary =e.salary+(0.1*e.salary)
where d.department_name="IT";