package org.ezen.ex02.domain;

import lombok.Data;

@Data
//carrot_attach 테이블과 매핑하는 VO 클래스
public class CarAttachVO {
	
	private String uuid;
	private String uploadPath; // YYYY/MM/DD형식
	private String fileName;
	private boolean fileType; //image는 true 아닌것은 false

	private Long cno; //carrot_car의 cno 값을 매핑하기 위한 변수
}
