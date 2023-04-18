# current date
select curdate();
select now(); # date with time

# add date
select adddate(curdate(),interval 10 day);
select adddate(curdate(),interval 1 month);

# select month from date
select month(curdate());
select monthname(curdate());

# select day of month
select dayofmonth(curdate());
 
 # day with name
 select dayname(curdate());
 
 # day with week
 select dayofweek(curdate());
 
select dayofyear(curdate());

select hour(now());

select minute(now());

# add time
select addtime(now(),"1:15:00");

select time(adddate(now(),"1:00:00"));

# gives current time
select current_time();

# substract date
select subdate(curdate(),interval 1 month);

select date_sub(curdate(),interval 2 month);

# date differnece : returns the number of days
select datediff(curdate(),"2023:03:27");

# solving queries in testcoursedb using date
use testcoursedb;
# find out experice of each employee
select employee_id,first_name,datediff(curdate(),hire_date)/365 as experience
from employees;

# different date formates
select date_format(curdate(),"%d-%m-%y");
select date_format(curdate(),"%D-%m-%y");
select date_format(curdate(),"%d-%m-%Y");
select date_format(curdate(),"%w-%d-%m-%y");
select date_format(curdate(),"%D-%-%y");



 

 

