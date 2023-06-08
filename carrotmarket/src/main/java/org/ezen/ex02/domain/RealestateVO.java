package org.ezen.ex02.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class RealestateVO {

	private Long bno;
	private String title;
	private String town;
	private String writer;
	private String roomType;
	private Date regdate;
	private Date updateDate;
	
	private List<RealestateAttachVO> attachList; //게시판 특정 게시글에 첨부되는 첨부파일 리스트
	
}
