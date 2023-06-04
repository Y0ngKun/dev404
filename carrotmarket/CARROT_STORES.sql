create table CARROT_STORES(
  bno number(10,0),
  notice varchar2(200),
  content varchar2(3000) not null,
  customBenefit varchar2(300),
  StoresLocation varchar2(300),
  writer varchar2(150),
  regdate date default sysdate, 
  updatedate date default sysdate
);

--자동 증가 시퀀스 만들기
CREATE SEQUENCE seq_carrot_stores START WITH 1 INCREMENT BY 1;

--시퀀스 캐시 없앰 
ALTER SEQUENCE seq_carrot_stores NOCACHE;


--bno를 pk로 만듦
alter table carrot_stores add constraint pk_carrot_stores primary key (bno);

--데이터 삽입 테스트
insert into carrot_stores (bno, notice, content, customBenefit,StoresLocation, writer) 
values (seq_carrot_stores.nextval, 'TestNotice', '테스트 본문 내용', ' 베네핏', '가게 위치', '작성자');

commit;


