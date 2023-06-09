--멤버 테이블
drop table carrot_member CASCADE CONSTRAINTS;
drop sequence carr_mem_id_seq;

create table carrot_member(
id number(10) constraint carr_mem_id_pk primary key,
userid varchar2(20) not null,
userpwd varchar2(60) not null,
username varchar2(10) not null,
usernickname varchar2(20) not null,
useraddress varchar2(40) not null,
useremail varchar2(60),
usergender char(1),

--아래 새롭게 추가한 것
isbusiness char(1) not null,
category varchar2(100),
uuid varchar2(200),
uploadPath varchar2(200),
fileName varchar2(200),
filePath varchar2(200)
);

create sequence carr_mem_id_seq;

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
--중고거래 게시글
drop table carrot_secondhand_articles CASCADE CONSTRAINTS;
drop sequence carr_art_id_seq;

create table carrot_secondhand_articles(
ID NUMBER(10,0) constraint carr_art_id_pk primary key,
MEMBERNO NUMBER(10,0) NOT NULL, 
TITLE VARCHAR2(50 BYTE) NOT NULL, 
BODY VARCHAR2(2000 BYTE) NOT NULL, 
COST NUMBER(10,0), 
COSTOFFER CHAR(1 BYTE) DEFAULT 0, 
REGDATE DATE DEFAULT sysdate, 
UPDATEDATE DATE DEFAULT sysdate,
LNG VARCHAR2(35),
LAT VARCHAR2(35),
LOCATIONINFO VARCHAR2(1000), 
SELL NUMBER(1,0) DEFAULT 0, 
HITCOUNT NUMBER(10,0) DEFAULT 0, 
chatcount number(10,0) default 0,
likecount number(10,0) default 0,
CONSTRAINT CARR_ART_MEM_FK foreign key(MEMBERNO) references carrot_member (id)
);

--寃뚯떆湲? ?떆???뒪
create sequence carr_art_id_seq;
--寃뚯떆湲? ?씤?뜳?뒪
create index carr_sec_art_ind on carrot_secondhand_articles(updatedate desc);

--?씠誘몄?
drop table CARROT_secondhand_IMG; 

CREATE TABLE CARROT_secondhand_IMG (	
ARTICLENO NUMBER(10,0) NOT NULL, 
FILEPATH VARCHAR2(200 BYTE) NOT NULL, 
FILENAME VARCHAR2(200 BYTE) CONSTRAINT CARR_IMG_FILE_PK PRIMARY KEY,
CONSTRAINT CARR_IMG_ART_FK FOREIGN KEY (ARTICLENO)REFERENCES carrot_secondhand_articles (ID)
);
 
-- 중고거래 관심글
drop table carrot_secondhand_article_like;

create table carrot_secondhand_article_like(
id number(10) constraint carr_like_id_pk primary key,
articleno number(10) not null,
memberno number(10) not null,
constraint carr_like_article_fk foreign key (articleno) REFERENCES carrot_secondhand_articles (id),
constraint carr_like_member_fk foreign key (memberno) REFERENCES carrot_member (id)
);

drop sequence carr_like_seq;
create sequence carr_like_seq;




-- 채팅방 db
drop table carrot_chatroom CASCADE CONSTRAINTS;

create table carrot_chatroom(
roomid varchar2(40) constraint chatroom_pk primary key,
chatuser number(10) not null,
targetuser number(10) not null,
articleno number(10) not null,
CONSTRAINT CARR_chat_cu_FK FOREIGN KEY (chatuser) REFERENCES CARROT_member (id),
CONSTRAINT CARR_chat_tu_FK FOREIGN KEY (targetuser) REFERENCES CARROT_member (id),
CONSTRAINT CARR_chat_an_FK FOREIGN KEY (articleno) REFERENCES carrot_secondhand_articles (id)
);
drop sequence carr_chat_id_seq;
create sequence carr_chat_id_seq;

--채팅 메세지 db
drop table carrot_chat;

create table carrot_chat(
roomid varchar2(40) not null,
message varchar2(1000) not null,
sender number(10) not null,
regdate varchar2(25) not null,
CONSTRAINT CARR_chat_id_FK FOREIGN KEY (roomid) REFERENCES carrot_chatroom (roomid)
);

--부동산
create sequence carr_realestate_seq;

create table carrot_realestate (
bno number(10,0),
title varchar2(200) not null, /*제목*/
town varchar2(200), /*지역*/ 
writer varchar2(50) not null, /*판매자  | 라디오*/
roomType varchar2(50), /*룸개수 | 셀렉트*/

regdate date default sysdate,  
updatedate date default sysdate
);

alter table carrot_realestate add constraint pk_carrot primary key(bno);


/*첨부파일*/
create table carrot_re_attach(
uuid varchar2(100) not null,
uploadPath varchar2(200) not null,
fileName varchar2(100) not null,
filetype char(1) default 'I',
bno number(10,0)
);

alter table carrot_re_attach add constraint carrot_re_pk_attach primary key (uuid);

alter table carrot_re_attach add constraint carrot_re_fk_board_attach foreign key (bno) references carrot_realestate(bno);

--부동산
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



drop table carrot_stores CASCADE CONSTRAINTS;
---스토어 테이블
create table CARROT_STORES(
  bno number(10,0),
  notice varchar2(200),
  content varchar2(3000) not null,
  customBenefit varchar2(300),
  StoresLocation varchar2(300),
  writer number(10,0),
  regdate date default sysdate, 
  updatedate date default sysdate,
  storeName varchar2(200)
);

--1씩 자동 증가 시퀀스
CREATE SEQUENCE seq_carrot_stores START WITH 1 INCREMENT BY 1;

--bno PK만들기
alter table carrot_stores add constraint pk_carrot_stores primary key (bno);

--스토어 이미지 테이블
create table CARROT_STORES_IMAGES (
  bno number(10,0),
  uuid varchar2(200) not null,
  uploadPath varchar2(200) not null,
  fileName varchar2(100) not null, 
  filetype char(1) default 'I'
);

--UUID PK만들기
alter table CARROT_STORES_IMAGES add constraint PK_CARROT_STORES_IMAGES primary key (uuid);

--스토어 (게시판) FK키 만들기
alter table CARROT_STORES_IMAGES add constraint FK_CARROT_STORES_IMAGES foreign key (bno) references CARROT_STORES(bno);
