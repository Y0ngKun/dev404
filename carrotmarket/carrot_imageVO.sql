create table CARROT_IMAGEVO ( 
  uuid varchar2(200) not null,
  uploadPath varchar2(200) not null,
  fileName varchar2(100) not null, 
  filetype char(1) default 'I',
  bno number(10,0)
);
alter table CARROT_IMAGEVO add constraint CARROT_IMAGEVO_PK primary key (uuid); 

alter table CARROT_IMAGEVO add constraint fk_Carrot_imageVO foreign key (bno) references carrot_board(bno);


--시퀀스 만들기
CREATE SEQUENCE CARROT_imageVO_seq START WITH 1 INCREMENT BY 1;








--시퀀스 자동 증가 트리거  XXXX
CREATE OR REPLACE TRIGGER stores_image_trigger
BEFORE INSERT ON stores_image
FOR EACH ROW
BEGIN
   :NEW.image_id := CARROT_imageVO_seq.NEXTVAL;
END;



--테이블 삽입 테스트  XXXX
INSERT INTO CARROT_imageVO (bno,uuid, uploadPath , fileName,filetype)
VALUES ('image1.jpg', 'new_image1.jpg', '/path/to/images/image1.jpg');

