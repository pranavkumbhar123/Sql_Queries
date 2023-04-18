use bookdb;
#Q1 Name of book, price and authorname where author lives in "City"
select b.bookname, b.price,a.city
from book b join author a
on b.authorid=a.authorid and a.authorname and a.city="ashta";


Q2. Author details who have won award
Q3. Show author details who have won particular award
Q4. Number of author who have won award 
Q5. Number of books written by a particular author
select count(ar.authorid) as totalbook,ar.authorname from book b join authoraward aw join author ar
on b.bookid=aw.bookid
and ar.authorid=aw.authorid
group by ar.authorid;

Q5. Total price of books author wise in desc order
Q6. Book name whose price is second max
Q7. Number of award won by author
select ar.*,count(aw.awardtypeid)
as totalaward from award ar join authoraward aw
on ar.awardtypeid=aw.awardtypeid 
group by aw.awardtypeid;
q8, Names of books whose price is less tha particular book
Q9. Name of books which is award win order by price