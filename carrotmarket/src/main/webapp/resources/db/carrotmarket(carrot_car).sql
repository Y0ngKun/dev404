<�� ��Ʈ>

--�߰��� ���ŷ� ��Ʈ ���� �۾��� ����

--carrot_member ���̺� ����
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

--carr_mem_id_seq ������ ����
create sequence carr_mem_id_seq;

--dummy ������ ����
insert into carrot_member values(1,'admin','1234','������','master','����','admin@naver.com','1');

select * from carrot_member;

--���̺� ������ ���� ����
delete from carrot_member
where carrot_member.id = '21';

--�߰��� ���ŷ� ���̺� ����
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

--car_seq ������ ����
create sequence car_seq;

--carrot_member���̺��� ID�� ���� �ϱ� ���� �ܷ�Ű ���
alter table carrot_car add constraint fk_carrot_car_id foreign key (id) references carrot_member(id);

select * from carrot_car;

drop table carrot_car;
drop sequence car_seq;

select * from carrot_car where cno > 0 order by cno desc;

delete carrot_car where cno = 1;

--select�� �ڿ� hint�� �ٿ��� ������ �˻��ϱ�
select /*+ INDEX_ASC(carrot_car pk_carrot_car) */
rownum cno, title, content, writer, regdate, updatedate
from carrot_car order by cno;

--test - dummy data ����
insert into carrot_car(cno,writer,title,content,carname,cartype,caryear,carprice,cardate,fuel,disp,kilos,mission)
values(car_seq.nextval,'����','�ڶ��� �˴ϴ�.','23��� �ڶ��� �Ⱦƿ�','�ڶ���','suv','2023.05.22','1000000','23.05.22','����','2000CC','200,000km','�����ƽ');

--carrot_attach(�߰��� ���ŷ� ��Ʈ(carrot_car) - ÷������) ���̺� ����
create table carrot_attach(
uuid varchar2(200) not null,
uploadPath varchar2(200) not null,
fileName varchar2(200) not null,
filetype char(1) default '1',
cno number(10,0)
);

--pk_carrot_attach, �⺻Ű ���
alter table carrot_attach add constraint pk_carrot_attach primary key(uuid);

--fk_car_attach, �ܷ�Ű ���
alter table carrot_attach add constraint fk_carrot_attach foreign key(cno) references carrot_car(cno);

select * from carrot_attach;

select * from carrot_car order by  cno;

drop table carrot_attach;

desc carrot_attach;

select * from carrot_attach;

select count(cno) from carrot_car;

--�̹����� �Ѱ��� �����ö� ����Ϸ��� ���� ����
select * from carrot_attach where cno = 57 and rownum <= 1;

--carrot_reply (�߰��� ���ŷ� ��Ʈ(carrot_car) - ���) ���̺� ����
create table carrot_reply(
rno number(10,0) not null, --pk
cno number(10,0) not null, --fk
reply varchar2(2000) not null,
replyer varchar2(100) not null,
replydate date default sysdate,
updateDate date default sysdate
);

--seq_reply_car ������ ����
create sequence seq_reply_car nocache;

--carrot_reply ���̺� pk�� �ɱ� ���� ����
alter table carrot_reply add constraint pk_reply_car primary key(rno);

--carrot_reply ���̺� fk�� �ɱ� ���� ����
alter table carrot_reply add constraint fk_reply_car foreign key(cno) references carrot_car(cno); 

--��� dummy data - insert_test
insert into carrot_reply(rno, cno, reply, replyer) values(seq_reply_car.nextval, 1, '��� �׽�Ʈ', '�ۼ���');

drop table carrot_reply;
drop sequence seq_reply_car;

select * from carrot_reply;

--��� update_test
update carrot_reply 
set reply = '�ۼ���1',
updateDate = sysdate
where rno = 1;

===================================================================================

<���� ��Ʈ>

--���̺� �� �������� ��������
drop table carrot_member CASCADE CONSTRAINTS;

--������ ����
drop sequence carr_mem_id_seq;

--carrot_member ���̺� ����
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

--carr_mem_id_seq ������ ����
create sequence carr_mem_id_seq;

--dummy ������ ����
insert into carrot_member values(1,'admin','1234','������','master','����','admin@naver.com','1');

select * from carrot_member;

--���̺� ������ ���� ����
delete from carrot_member
where carrot_member.id = '21';
