drop table H_Member;

create table H_Member(
user_id varchar(30) primary key,
user_name varchar(30) not null,
user_pwd  varchar(30) not null,
user_point int default 0
);

insert into H_Member values('yoo1', '유관순', '1234', 100);
insert into H_Member values('kimth', '김태희', '1234', default);
insert into H_Member values('admin', '관리자', 'admin', default);

select * from H_Member where user_id!='admin'

commit work;