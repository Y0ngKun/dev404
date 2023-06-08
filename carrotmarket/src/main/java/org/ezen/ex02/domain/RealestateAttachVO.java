package org.ezen.ex02.domain;

import lombok.Data;

@Data
//TBL_ATTACH테이블과 매핑되는 VO클래스
public class RealestateAttachVO {
	
	private String uuid;
	private String uploadPath; // YYYY/MM/DD
	private String fileName;
	private boolean fileType; //image는 true

	private Long bno;
}
