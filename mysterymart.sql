create database mystrymart;
use mystrymart; 

create table users(userid varchar(20),empid varchar(20),password varchar(20),usertype varchar(20),username varchar(20));
create table employees(empid varchar(20),empname varchar(20),job varchar(20),salary int(10));
create table products(p_id varchar(20),P_name varchar(20),p_companyname varchar(20),P_price float(10),our_price float(10),p_tax int(3),quantity int);
alter table products add (status varchar(1));
select* from products;
create table orders(order_id varchar(20),p_id varchar(20),quantuty int,userid varchar(20));
SET SQL_SAFE_UPDATES = 0;
alter table employees add constraint EID_EMP_PK primary key (empid);
alter table users add constraint EID_EMP_FK foreign key(empid) references employees(empId);
alter table users add constraint UID_USE_PK_pk primary key (userid);
alter table products add constraint PID_PRO_Pk primary key(p_id);
alter table orders add constraint OID_PID_ORD_PK primary key(order_id,p_id);
alter table orders add constraint PID_ORD_FK foreign key(p_id) references products(P_id);
alter table users drop constraint eid_emp_fk;
alter table users add constraint eid_emp_fk foreign key(empid) references employees(empid) on delete cascade;

insert into users values("sourabh@123","E101","admin",'manager','sourabh');
insert into employees values("E101","sourabh","admin",100);
select * from employees;
select * from users;

select current_user();