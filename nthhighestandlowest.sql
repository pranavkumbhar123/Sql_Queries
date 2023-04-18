# Nth highest and lowest salary
select distinct(salary) from employees;

select distinct (salary) from employees
order by salary desc;

# 3 highest salary
select distinct(salary) from employees
order by salary desc
limit 3;

# 3rd highest
select min(salary)
from (select distinct(salary) from employees
order by salary desc
limit 3) as thirdhighest;

#4 lowest
select distinct(salary) from employees
order by salary asc
limit 4;

select max(salary)
from ( select distinct (salary) from employees 
order by salary asc
limit 4) as fourthlowest;


# 3rd highest
select distinct salary
from employees
 order by salary desc
 limit 2,1;
 
 # 4th lowest
 select distinct salary
 from employees
 order by salary asc
 limit 3,1; # it skips 3 rows and print 1 row after it
 
 # 3rd highest
 select distinct salary
 from employees e1
 where 3=(select count(distinct (salary))
			from employees e2 
			where e1.salary <= e2.salary);
 
 # 4th lowest
 select distinct salary
 from employees e1
 where 4=(select count(distinct(SALARY))
			from empployees e2
            where e1.salary >=e2.salary);
 