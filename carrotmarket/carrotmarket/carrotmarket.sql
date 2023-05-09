create table carrot_member(
id number(10) constraint carr_mem_id_pk primary key,
userid varchar2(20) not null,
userpwd varchar2(60) not null,
username varchar2(10) not null,
nickname varchar2(20) not null,
address varchar2(40) not null
);

create sequence carr_mem_id_seq;

select * from carrot_member;

insert into carrot_member(id, userid, userpwd, username, nickname, address)
values(carr_mem_id_seq.nextval,'admin','admin','운영자','운영자','admin');

commit;