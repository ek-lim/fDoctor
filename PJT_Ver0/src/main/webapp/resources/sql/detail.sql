drop table detail purge;

create table Review(
hid int,
name varchar(20),
review varchar(100) not null,
reg_date date,
foreign key(hid) references hospital(hid)
);



insert into review values(1001, '다영', '여기좋아요', sysdate);

select*from review;