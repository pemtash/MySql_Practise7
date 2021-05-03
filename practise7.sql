show databases;
select * from dsdb; # error
use dsdb;
select * from dsdb; # error
show tables;
select * from authors;
desc authors;
insert into authors values ( 1, 'jk rowling');
select * from authors;
insert into authors values (2, 'sidney sheldon'), (3, 'Micheal Bay');
select * from authors;
update authors set name = 'pema' where name = 'sidney sheldon'; #error
set sql_safe_updates = 0;
update authors set name = 'pema' where name = 'sidney sheldon';
select * from authors;
show databases;
use pem;
show tables;
select * from games;
desc games;

# PRIMARY KEY CONSTRAINT;
# a) create a primary key constraint on a column;
CREATE TABLE IF NOT EXISTS payments ( payid int(20) PRIMARY KEY, name char(20), age int(20), amount int(20));
SELECT * FROM payments;
DESC payments;
# we see that we have table with primary key as payid;

#TWO WAY OF CREATING A PRIMARY KEY CONSTRAINT ON A COLUMN;

# b) create a PRIMARY KEY  constraint on a column;
CREATE TABLE IF NOT EXISTS orders ( ordid int(20), name char(20), age int(20), ordno bigint(50), PRIMARY KEY (ordid));
# 20:29:20	CREATE TABLE IF NOT EXISTS orders ( ordit int(20), name char(20), age int(20), ordno bigint(50), PRIMARY KEY (ordid)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1	0.000 sec
SELECT * FROM orders;
desc orders;


# add a PRIMARY KEY constraint to a column;
SELECT * FROM BOOKS;
DESC BOOKS;
# THERE IS NO PRIMARY KEY IN BOOKS TABLE;
ALTER TABLE BOOKS ADD CONSTRAINT PRIMARY KEY (AUTH_ID);
DESC BOOKS;
# NOW WE CAN SEE THAT AUTH_ID IS DEFINED WITH PRIMARY KEY;


# c) Drop a default constraint to a column;
ALTER TABLE ORDERS DROP PRIMARY KEY;
DESC ORDERS;
# WE HAVE SUCCESSFULLY DROP PRIMARY KEY WHICH WE CREATED BEFORE;


ALTER TABLE ORDERS MODIFY ORDID INT(20);
DESC ORDERS;




