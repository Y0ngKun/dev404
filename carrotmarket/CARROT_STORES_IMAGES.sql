create table CARROT_STORES_IMAGES (
  bno number(10,0),
  uuid varchar2(200) not null,
  uploadPath varchar2(200) not null,
  fileName varchar2(100) not null, 
  filetype char(1) default 'I'
);


--PKÎ°? UUID Ïß??†ï
alter table CARROT_STORES_IMAGES add constraint PK_CARROT_STORES_IMAGES primary key (uuid);

--FK(?ô∏?ûò?Ç§)Î°? Í≤åÏãú?åê(CARROT_STORES) Ïß??†ï
alter table CARROT_STORES_IMAGES add constraint FK_CARROT_STORES_IMAGES foreign key (bno) references CARROT_STORES(bno);


commit;


SELECT id, uuid, uploadpath, filename
FROM carrot_member
WHERE uuid IS NOT NULL AND uploadpath IS NOT NULL AND filename IS NOT NULL;



















--?ç∞?ù¥?Ñ∞ ?ÇΩ?ûÖ ?Öå?ä§?ä∏
INSERT INTO CARROT_STORES_IMAGES (bno,uuid, uploadPath, fileName, filetype)
VALUES ('1', 'uuidTest', '/uploadPath/test','TestfileName','I');


--xxxxxx?ãú???ä§ ?ûê?èô Ï¶ùÍ? ?ä∏Î¶¨Í±∞ (Í∏∞Î°ù?ö© ?Ç¨?ö©?ïà?ï®!!) xxxxxxxx
CREATE OR REPLACE TRIGGER stores_image_trigger
BEFORE INSERT ON stores_image
FOR EACH ROW
BEGIN
   :NEW.image_id := CARROT_imageVO_seq.NEXTVAL;
END;

