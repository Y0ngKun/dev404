package org.ezen.ex02.domain;

import lombok.Data;

@Data
public class CarAttachFileDTO {

	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
}
