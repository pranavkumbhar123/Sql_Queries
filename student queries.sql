select * from student;
select sname, feestatus
from student
where courseid=(select courseid
				from course
                where cname="java");

select sname, feestatus
from student
where courseid=(select courseid
				from course
                where cname="python" and feestatus="halfpaid");
                
select *
from coursefaculty
where courseid in(select courseid
					from course
                    where ;




select * 
from student where courseid=(select courseid
							from course
                            where cname="python");
                            
select cname
from course
where courseid in (select courseid
					from coursefaculty
                    where facultyid in(
                    select facultyid
                    from faculty
                    where salary>6000));
                    
select fname
from faculty
where salary > (select salary
			   from faculty
               where fname="shuruti");
               
select fname
from faculty
where salary > (select salary avg  as Averagesalary
					from faculty);

select avg (salary)
from faculty;

select * from faculty;
update salary
set salary=salary +1000
where salary >( select avg(salary)
				from faculty);
                
select courseid , count(*) as total

