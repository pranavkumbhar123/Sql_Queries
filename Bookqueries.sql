use bookdb;
# add coloumn bookpages

select * from book ;
alter table book
add column pageno int;

# delet this pageno column
alter table book
drop column pageno;

# create an copy of table author
create table author_copy
(select * from author);

#select book price between 100 to 200 with thier id

select * from book;
select price,bookid
from book
where price between 100 and 200;

select * from book;
select price 