-- message.sql

drop table message purge;



create table message (
	message_no int primary key, -- 번호
	sender varchar(50) , -- 보낸사람
	recipient varchar(50) , -- 받는사람
	message_title varchar(100), -- 제목
	message_cont varchar(4000), -- 내용
	message_date date, -- 작성시간
	message_ck varchar(50) default '안읽음'
);


drop sequence message_seq;
create sequence message_seq increment by 1 start with 1 nocache;

insert into message values(message_seq.nextval, 'hong', 'admin', '제목 : 반갑습니다', '안녕하세요? 쪽지 보냅니다.', sysdate, default);
insert into message values(message_seq.nextval, 'yoo1', 'admin', '제목 : 반갑습니다', '안녕하세요? 쪽지 보냅니다.', sysdate, default);
select * from message;
delete from message;

select * from (select message.*, rownum as rnum from 
		(select * from message order by message_no desc) message)
		where rnum >=1 and rnum<=10;

commit work;