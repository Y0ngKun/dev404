create table CARROT_PF_IMAGE ( 
  uuid varchar2(100) not null,
  uploadPath varchar2(200) not null,
  fileName varchar2(100) not null, 
  filetype char(1) default 'I',
  bno number(10,0)
);
alter table CARROT_IMAGEVO add constraint CR_IMAGE_PK primary key (uuid); 

alter table CARROT_IMAGEVO add constraint fk_Carrot_board_image foreign key (bno) references carrot_board(bno);
