package org.ezen.ex02.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CarReplyVO {

	private Long rno;
	private Long cno;
	
	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updateDate;
}
