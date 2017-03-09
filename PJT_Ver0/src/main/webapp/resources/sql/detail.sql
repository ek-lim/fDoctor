drop table detail purge;

create table Detail(
hid int,
name varchar(20),
review varchar(100) not null,
reg_date date,
foreign key(hid) references hospital(hid)
);



insert into DETAIL values(24,'hong', 'ㅇㅇㅇ', sysdate);

select*from detail;