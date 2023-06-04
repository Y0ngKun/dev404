package org.ezen.ex02.domain;

import java.util.Date;

import lombok.Data;

@Data//생성자는 기본형만 만듬
public class ReplyVO {
	//tbl_reply테이블의 컬럼명과 매핑
	private Long rno;
	private Long bno;

	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updateDate;
}
