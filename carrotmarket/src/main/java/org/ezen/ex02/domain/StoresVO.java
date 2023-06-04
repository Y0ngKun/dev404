package org.ezen.ex02.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class StoresVO {
	
	  private Long bno;
	  
	  private String notice;
	  private String content;
	  private String customBenefit;
	  private String StoresLocation;
	  private String writer;
	  
	  
	  private Date regdate;
	  private Date updateDate;
	  
	  
	  
	  //이미지 VO 추가
	  private List<StoresImageVO> attachList;

}
