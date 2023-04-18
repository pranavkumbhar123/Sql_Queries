select * from studentdb1.student;
alter table student
add constraint fk_course
foreign key (courseid) references course(courseid)
on delete set null;

create table coursefaculty(
fid int primary key,
courseid int,
facultyid int);
constraint fk_course foreign key(courseid)references course(courseid),
constraint fk_faculty foreign key(facultyid) references faculty (facultyid));

