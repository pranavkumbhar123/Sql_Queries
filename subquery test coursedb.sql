use testcoursedb;
# name of employee who work in IT department
Select * from employees;
#select * from departments;
select FIRST_NAME
from employees
where DEPARTMENT_ID =(select DEPARTMENT_ID
						from departments
                        where DEPARTMENT_NAME="IT");
                        
 # name of employees whose salary is greater than average salary of all employees
 
 select avg(salary)
 from employees;
 
 select FIRST_NAME
 from employees
 where salary > (select avg(SALARY)
					from employees
                    );
 
  # names of the employees whose salary is equal to the min of job_id
  select FIRST_NAME,LAST_NAME
  from employees e
  where SALARY=(select min_salary
				from jobs j
                where e.JOB_ID=j.JOB_ID);
  
                    
                    
   #Write a query to find the names (first_name, last_name), the salary of the employees 
   #whose salary is equal to the minimum salary for their job grade. 

   select min(salary)
 from employees;
   select FIRST_NAME, LAST_NAME
 from employees
 where salary = (select min(SALARY)
					from employees
                    );
    
    #Write a query to find the names (first_name, last_name), the salary of the 
   #employees who earn more than the average salary and who works in any of the IT departments.      
   select avg(salary)
 from employees;
 
 select FIRST_NAME, LAST_NAME
 from employees
 where salary > (select avg(SALARY)
					from employees
                    );
   #Write a query to find the names (first_name, last_name), the salary of the 
#employees who earn the same salary as the minimum salary for all departments.    

 #Write a query to find the names (first_name, last_name) of the employees who are not supervisors. 
 
  #Write a query to find the names (first_name, last_name) and salary of the employees who earn a salary
   #that is higher than the salary of all the 
#Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest