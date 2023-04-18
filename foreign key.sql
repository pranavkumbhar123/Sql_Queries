use productdb;
create table supplier(
supid int primary key,
firstName varchar(50) not null,
lastName varchar(50),
phoneNo bigint not null,
emailid varchar(100));

create table item(
itemid int primary key,
itemName varchar(50) not null,
cost float,
supid int,
foreign key (supid) references supplier(supid));

desc item;
desc supplier;

select * from supplier;

use item;
insert into item
values(1,"pendrive",670, 102);

insert into item
values (2, "hardDisk",988,104);

insert into item
values
(3,"WebCamera",5000,103),
(4,"WebCamera",6700,104),
(5,"HeadPhones",540,101);

select * from item;
# nto allowed
insert into item
values(9,"graphiccard",3000,107);

# foreign key options
# Restrict : By defalut > dose not allow us to delet a primary  key row from parent table if that key is acting as foreign key in child table

delete from supplier
where supid=102;

delete from supplier 
where supid =107;

# Cascade: It is used when we delete or update any row from the parent table, 
#the values of the matching rows in the child table will be deleted or updated automatically.
# propagated

delete from supplier
where supid=102;



