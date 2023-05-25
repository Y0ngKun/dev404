package org.ezen.ex02.domain;


import lombok.Data;

@Data
public class ImageVO {

	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType; 
	private String filePath;
	
	private Long bno;
	
	
}
