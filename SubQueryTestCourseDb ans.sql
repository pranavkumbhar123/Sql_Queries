use testcoursedb2;
# names of employee who work in IT department

select first_name, last_name
from employees
where DEPARTMENT_ID= (select DEPARTMENT_ID
                     from departments
                     where DEPARTMENT_NAME="IT"
                     );



 # name of employees whose salary is greater than average salary of all employees
 select first_name, last_name
 from employees
 where SALARY> (select avg(SALARY) from employees);
 
  # names of the employees whose salary is equal to the min of job_id
  select first_name, last_name
 from employees e
 where SALARY=(select min_salary
                 from jobs j
                 where e.JOB_ID=j.JOB_ID);
    
  
 
  
   #Write a query to find the names (first_name, last_name), the salary of the employees 
    #whose salary is equal to the minimum salary for their job grade. 
    
 select first_name, last_name,salary,JOB_ID
 from employees e1
 where SALARY=(select min(salary)
                 from employees e2
                 where e1.JOB_ID=e2.JOB_ID);
    
    
    #Write a query to find the names (first_name, last_name), the salary of the 
   #employees who earn more than the average salary and who works in any of the IT departments.  
select first_name, last_name, salary
 from employees
 where salary>( select avg(salary)
                from employees) and DEPARTMENT_ID= (select DEPARTMENT_ID
                                                    from departments 
                                                    where DEPARTMENT_NAME like "IT");
   
   
   #Write a query to find the names (first_name, last_name), the salary of the 
#employees who earn the same salary as the minimum salary for all departments.   

select DEPARTMENT_ID,min(salary)
from employees
group by DEPARTMENT_ID; 

select first_name, last_name, salary
 from employees
 where salary in(select min(salary)
               from employees
			    group by DEPARTMENT_ID);


 #Write a query to find the names (first_name, last_name) of the employees who are  supervisors. 
 
 select FIRST_NAME,LAST_NAME
 from employees e1
 where exists(select *
              from employees e2
              where e2.MANAGER_ID=e1.EMPLOYEE_ID);
              
  #Write a query to find the names (first_name, last_name) of the employees who are  not supervisors. 
  
  select FIRST_NAME,LAST_NAME
 from employees e1
 where not exists(select *
              from employees e2
              where e2.MANAGER_ID=e1.EMPLOYEE_ID);
              
 
  #Write a query to find the names (first_name, last_name) and salary of the employees who earn a salary
   #that is higher than the salary of all the 
#Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest


 select max(salary) from employees where job_id='SH_CLERK';
 
 select first_name, last_name, salary
from employees where salary >(select max(salary) from employees where job_id='SH_CLERK')
                               order by salary;

 select first_name, last_name, salary
from employees where salary >All(select salary from employees where job_id='SH_CLERK')
                                   order by salary;