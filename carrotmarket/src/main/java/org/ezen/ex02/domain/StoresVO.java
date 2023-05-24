package org.ezen.ex02.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StoresVO {
	
	  private Long bno;
	  private String title;
	  private String content;
	  private String writer;
	  private String region;
	  private Date regdate;
	  private Date updateDate;

}
