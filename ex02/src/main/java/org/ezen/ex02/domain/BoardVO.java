package org.ezen.ex02.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

//빈클래스(DTO,VO)이므로 getter,setter를 가짐
@Data
public class BoardVO {

	private Long bno;  //tbl_board의 데이터형이 number(10,0)이므로 Long
	private String title; //varchar2
	private String content;
	private String writer;
	private Date regDate; //Date
	private Date updateDate;
	
	private int replyCnt;
	
	private List<BoardAttachVO> attachList;
}
