create table CARROT_STORES_IMAGES (
  bno number(10,0),
  uuid varchar2(200) not null,
  uploadPath varchar2(200) not null,
  fileName varchar2(100) not null, 
  filetype char(1) default 'I'
);


--PK로 UUID 지정
alter table CARROT_STORES_IMAGES add constraint PK_CARROT_STORES_IMAGES primary key (uuid);

--FK(외래키)로 게시판(CARROT_STORES) 지정
alter table CARROT_STORES_IMAGES add constraint FK_CARROT_STORES_IMAGES foreign key (bno) references CARROT_STORES(bno);


commit;





















--데이터 삽입 테스트
INSERT INTO CARROT_STORES_IMAGES (bno,uuid, uploadPath, fileName, filetype)
VALUES ('1', 'uuidTest', '/uploadPath/test','TestfileName','I');


--xxxxxx시퀀스 자동 증가 트리거 (기록용 사용안함!!) xxxxxxxx
CREATE OR REPLACE TRIGGER stores_image_trigger
BEFORE INSERT ON stores_image
FOR EACH ROW
BEGIN
   :NEW.image_id := CARROT_imageVO_seq.NEXTVAL;
END;

