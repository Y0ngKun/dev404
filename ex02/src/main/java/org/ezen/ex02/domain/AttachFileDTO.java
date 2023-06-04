package org.ezen.ex02.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	
	private String fileName; //원본파일 이름
	private String uploadPath; //업로드 경로(YYYY/MM/DD만)
	private String uuid; //UUID값
	private boolean image;

}
