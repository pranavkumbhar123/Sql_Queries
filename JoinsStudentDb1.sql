
use studentdb1;

select * from student;
select * from course;

# name and feestatus of student enrolled for java

select s.sname, s.feestatus
from student s join course c
on s.courseid= c.courseid and c.cname="java";

# Show student whose faculty name is raksha

select s.*
from student s join coursefaculty cf join faculty f
on s.courseid=cf.courseid and cf.facultyid=f.facultyid and f.fname="Raksha";


select s.*,c.cname, c.fees
from student s join course c join coursefaculty cf join faculty f
on s.courseid= c.courseid and s.courseid=cf.courseid and cf.facultyid=f.facultyid and f.fname="Raksha";

 # student details whose coursename is java
  select s.*, c.cname
 from student s join course c
 on s.courseid= c.courseId and c.cname="java";
 
 
 # student details whose course duration is 4 months
 
 select s.*
 from student s join course c
 on s.courseid= c.courseid and c.duration=4;
 

   # Show the course who faculty salary is greater than 60000
   
   select c.*, f.salary
   from course c join coursefaculty cf join faculty f
   on c.courseid= cf.courseid and cf.facultyid= f.facultyid and f.salary>60000;

# Self join 
 
# show the names of have faculty whose salary is greater than than salary of Shuruti

select f1.fname
from faculty f1 join faculty f2
on f1.salary> f2.salary and f2.fname="Shuruti";

 # Show the names whose experience is greater than jayshree
 select f1.fname
from faculty f1 join faculty f2
on f1.experience> f2.experience and f2.fname="Jayshree";
 
  # show facutly name whose salary is greater than average salary

#> Better with subquery

# Show the course details  where faculty id 5
select c.*
from course c join coursefaculty cf join faculty f
on c.courseId = cf.courseId and cf.facultyId= f.facultyId and f.facultyId=5;

# show the faculty details who are teaching more than one course

select f.*, count(courseid) as TotalCourses
from faculty f join coursefaculty cf
on f.facultyid= cf.facultyid
group by facultyid
having TotalCourses>1
order by experience;


