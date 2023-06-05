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

--??™ ì¦ê? ?‹œ???Š¤ ë§Œë“¤ê¸?
CREATE SEQUENCE seq_carrot_stores START WITH 1 INCREMENT BY 1;

--bnoë¥? pkë¡? ë§Œë“¦
alter table carrot_stores add constraint pk_carrot_stores primary key (bno);

--?°?´?„° ?‚½?… ?…Œ?Š¤?Š¸
insert into carrot_stores (bno, notice, content, customBenefit,StoresLocation, writer) 
values (seq_carrot_stores.nextval, 'TestNotice', '?…Œ?Š¤?Š¸ ë³¸ë¬¸ ?‚´?š©', ' ë² ë„¤?•', 'ê°?ê²? ?œ„ì¹?', '?‘?„±?');

commit;


