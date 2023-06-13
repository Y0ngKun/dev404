<내 파트>

--중고차 직거래 파트 개인 작업용 쿼리

--carrot_member 테이블 생성
create table carrot_member(
id number(10) constraint carr_mem_id_pk primary key,
userid varchar2(20) not null,
userpwd varchar2(60) not null,
username varchar2(10) not null,
usernickname varchar2(20) noat null,
useraddress varchar2(40) not null,
useremail varchar2(60),
usergender char(1)
);

--carr_mem_id_seq 시퀀스 생성
create sequence carr_mem_id_seq;

--dummy 데이터 삽입
insert into carrot_member values(1,'admin','1234','관리자','master','서울','admin@naver.com','1');

select * from carrot_member;

--테이블 데이터 삭제 쿼리
delete from carrot_member
where carrot_member.id = '21';

--중고차 직거래 테이블 생성
create table carrot_car(
id number(10,0),  
cno number(10,0) constraint pk_carrot_car primary key,
writer varchar(50) not null,
title varchar2(200) not null,
content varchar2(4000) not null,
regDate date default sysdate,
updateDate date default sysdate,
carname varchar2(100) not null,
cartype varchar2(50) not null,
caryear varchar2(50) not null,
carprice varchar2(4000) not null,
cardate varchar2(100) not null,
fuel varchar2(50) not null,
disp varchar2(50) not null,
kilos varchar2(50) not null,
mission varchar2(50) not null
);

--car_seq 시퀀스 생성
create sequence car_seq;

--carrot_member테이블의 ID를 참조 하기 위한 외래키 잡기
alter table carrot_car add constraint fk_carrot_car_id foreign key (id) references carrot_member(id);

select * from carrot_car;

drop table carrot_car;
drop sequence car_seq;

select * from carrot_car where cno > 0 order by cno desc;

delete carrot_car where cno = 1;

--select문 뒤에 hint를 붙여서 데이터 검색하기
select /*+ INDEX_ASC(carrot_car pk_carrot_car) */
rownum cno, title, content, writer, regdate, updatedate
from carrot_car order by cno;

--test - dummy data 삽입
insert into carrot_car(cno,writer,title,content,carname,cartype,caryear,carprice,cardate,fuel,disp,kilos,mission)
values(car_seq.nextval,'국쌤','코란도 팝니다.','23년식 코란도 팔아요','코란도','suv','2023.05.22','1000000','23.05.22','디젤','2000CC','200,000km','오토매틱');

--carrot_attach(중고차 직거래 파트(carrot_car) - 첨부파일) 테이블 생성
create table carrot_attach(
uuid varchar2(200) not null,
uploadPath varchar2(200) not null,
fileName varchar2(200) not null,
filetype char(1) default '1',
cno number(10,0)
);

--pk_carrot_attach, 기본키 잡기
alter table carrot_attach add constraint pk_carrot_attach primary key(uuid);

--fk_car_attach, 외래키 잡기
alter table carrot_attach add constraint fk_carrot_attach foreign key(cno) references carrot_car(cno);

select * from carrot_attach;

select * from carrot_car order by  cno;

drop table carrot_attach;

desc carrot_attach;

select * from carrot_attach;

select count(cno) from carrot_car;

--이미지를 한개씩 가져올때 사용하려고 만든 쿼리
select * from carrot_attach where cno = 57 and rownum <= 1;

--carrot_reply (중고차 직거래 파트(carrot_car) - 댓글) 테이블 생성
create table carrot_reply(
rno number(10,0) not null, --pk
cno number(10,0) not null, --fk
reply varchar2(2000) not null,
replyer varchar2(100) not null,
replydate date default sysdate,
updateDate date default sysdate
);

--seq_reply_car 시퀀스 생성
create sequence seq_reply_car nocache;

--carrot_reply 테이블에 pk를 걸기 위해 수정
alter table carrot_reply add constraint pk_reply_car primary key(rno);

--carrot_reply 테이블에 fk를 걸기 위해 수정
alter table carrot_reply add constraint fk_reply_car foreign key(cno) references carrot_car(cno); 

--댓글 dummy data - insert_test
insert into carrot_reply(rno, cno, reply, replyer) values(seq_reply_car.nextval, 1, '댓글 테스트', '작성자');

drop table carrot_reply;
drop sequence seq_reply_car;

select * from carrot_reply;

--댓글 update_test
update carrot_reply 
set reply = '작성자1',
updateDate = sysdate
where rno = 1;

===================================================================================

<공통 파트>

--테이블 및 제약조건 완전삭제
drop table carrot_member CASCADE CONSTRAINTS;

--시퀀스 삭제
drop sequence carr_mem_id_seq;

--carrot_member 테이블 생성
create table carrot_member(
id number(10) constraint carr_mem_id_pk primary key,
userid varchar2(20) not null,
userpwd varchar2(60) not null,
username varchar2(10) not null,
usernickname varchar2(20) not null,
useraddress varchar2(40) not null,
useremail varchar2(60),
usergender char(1)
);

--carr_mem_id_seq 시퀀스 생성
create sequence carr_mem_id_seq;

--dummy 데이터 삽입
insert into carrot_member values(1,'admin','1234','관리자','master','서울','admin@naver.com','1');

select * from carrot_member;

--테이블 데이터 삭제 쿼리
delete from carrot_member
where carrot_member.id = '21';
